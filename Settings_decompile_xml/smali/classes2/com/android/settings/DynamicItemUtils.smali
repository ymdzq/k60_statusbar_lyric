.class public Lcom/android/settings/DynamicItemUtils;
.super Ljava/lang/Object;
.source "DynamicItemUtils.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/dynamicitem/DynamicItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DynamicItemUtils;->TAG:Ljava/lang/String;

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/DynamicItemUtils;->list:Ljava/util/List;

    .line 24
    invoke-direct {p0}, Lcom/android/settings/DynamicItemUtils;->init()V

    return-void
.end method

.method private init()V
    .locals 2

    .line 28
    iget-object v0, p0, Lcom/android/settings/DynamicItemUtils;->list:Ljava/util/List;

    new-instance v1, Lcom/android/settings/dynamicitem/UWBItem;

    invoke-direct {v1}, Lcom/android/settings/dynamicitem/UWBItem;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    iget-object p0, p0, Lcom/android/settings/DynamicItemUtils;->list:Ljava/util/List;

    new-instance v0, Lcom/android/settings/dynamicitem/SubScreenItem;

    invoke-direct {v0}, Lcom/android/settings/dynamicitem/SubScreenItem;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public shouldShow(Lcom/android/settingslib/miuisettings/preference/PreferenceActivity$Header;Landroid/content/Context;)Z
    .locals 4

    .line 39
    iget-object v0, p0, Lcom/android/settings/DynamicItemUtils;->list:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/android/settings/DynamicItemUtils;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/dynamicitem/DynamicItem;

    .line 44
    invoke-virtual {v2, p2}, Lcom/android/settings/dynamicitem/DynamicItem;->shouldShow(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 45
    iget-object p0, p0, Lcom/android/settings/DynamicItemUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "shouldShow: true"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    invoke-virtual {v2, p2, p1}, Lcom/android/settings/dynamicitem/DynamicItem;->setDetail(Landroid/content/Context;Lcom/android/settingslib/miuisettings/preference/PreferenceActivity$Header;)V

    const/4 p0, 0x1

    return p0

    .line 49
    :cond_1
    iget-object v2, p0, Lcom/android/settings/DynamicItemUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "shouldShow: false"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    :goto_1
    return v1
.end method
