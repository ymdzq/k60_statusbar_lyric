.class Lcom/android/settings/gestures/SystemNavigationGestureSettings$1;
.super Lcom/android/settings/search/BaseSearchIndexProvider;
.source "SystemNavigationGestureSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/gestures/SystemNavigationGestureSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 372
    invoke-direct {p0, p1}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>(I)V

    return-void
.end method


# virtual methods
.method public getRawDataToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/android/settingslib/search/SearchIndexableRaw;",
            ">;"
        }
    .end annotation

    .line 382
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 383
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "com.android.internal.systemui.navbar.gestural"

    .line 385
    invoke-static {p1, v0}, Lcom/android/settings/gestures/SystemNavigationPreferenceController;->isOverlayPackageAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 387
    new-instance v0, Lcom/android/settingslib/search/SearchIndexableRaw;

    invoke-direct {v0, p1}, Lcom/android/settingslib/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 388
    sget v1, Lcom/android/settings/R$string;->edge_to_edge_navigation_title:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settingslib/search/SearchIndexableRaw;->title:Ljava/lang/String;

    const-string/jumbo v1, "system_nav_gestural"

    .line 389
    iput-object v1, v0, Landroid/provider/SearchIndexableData;->key:Ljava/lang/String;

    .line 390
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    const-string v0, "com.android.internal.systemui.navbar.twobutton"

    .line 393
    invoke-static {p1, v0}, Lcom/android/settings/gestures/SystemNavigationPreferenceController;->isOverlayPackageAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 395
    new-instance v0, Lcom/android/settingslib/search/SearchIndexableRaw;

    invoke-direct {v0, p1}, Lcom/android/settingslib/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 396
    sget v1, Lcom/android/settings/R$string;->swipe_up_to_switch_apps_title:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settingslib/search/SearchIndexableRaw;->title:Ljava/lang/String;

    const-string/jumbo v1, "system_nav_2buttons"

    .line 397
    iput-object v1, v0, Landroid/provider/SearchIndexableData;->key:Ljava/lang/String;

    .line 398
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    const-string v0, "com.android.internal.systemui.navbar.threebutton"

    .line 401
    invoke-static {p1, v0}, Lcom/android/settings/gestures/SystemNavigationPreferenceController;->isOverlayPackageAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 403
    new-instance v0, Lcom/android/settingslib/search/SearchIndexableRaw;

    invoke-direct {v0, p1}, Lcom/android/settingslib/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 404
    sget p1, Lcom/android/settings/R$string;->legacy_navigation_title:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/android/settingslib/search/SearchIndexableRaw;->title:Ljava/lang/String;

    const-string/jumbo p0, "system_nav_3buttons"

    .line 405
    iput-object p0, v0, Landroid/provider/SearchIndexableData;->key:Ljava/lang/String;

    .line 406
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-object p2
.end method

.method protected isPageSearchEnabled(Landroid/content/Context;)Z
    .locals 0

    .line 376
    invoke-static {p1}, Lcom/android/settings/gestures/SystemNavigationPreferenceController;->isGestureAvailable(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method
