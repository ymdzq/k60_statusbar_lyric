.class public Lcom/android/settings/applications/ResolverSettings;
.super Lcom/android/settings/BaseFragment;
.source "ResolverSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/ResolverSettings$ResolverListAdapter;,
        Lcom/android/settings/applications/ResolverSettings$ViewHolder;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/android/settings/applications/ResolverSettings$ResolverListAdapter;

.field private mComponentOrders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private mIconSize:I

.field protected mOrderChanged:Z

.field private mOrderMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/content/ComponentName;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mOriginResolveList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mResolveArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetmIconSize(Lcom/android/settings/applications/ResolverSettings;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/settings/applications/ResolverSettings;->mIconSize:I

    return p0
.end method

.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Lcom/android/settings/BaseFragment;-><init>()V

    const/4 v0, 0x0

    .line 52
    iput-boolean v0, p0, Lcom/android/settings/applications/ResolverSettings;->mOrderChanged:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/applications/ResolverSettings;)Landroid/content/pm/PackageManager;
    .locals 0

    .line 40
    invoke-virtual {p0}, Lcom/android/settings/BaseFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    return-object p0
.end method

.method private buildComponent(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;
    .locals 1

    .line 123
    new-instance p0, Landroid/content/ComponentName;

    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method private updateMapAndArray()V
    .locals 5

    .line 78
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/ResolverSettings;->mOrderMap:Ljava/util/Map;

    const/4 v0, 0x0

    .line 79
    :goto_0
    iget-object v1, p0, Lcom/android/settings/applications/ResolverSettings;->mComponentOrders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 80
    iget-object v1, p0, Lcom/android/settings/applications/ResolverSettings;->mOrderMap:Ljava/util/Map;

    iget-object v2, p0, Lcom/android/settings/applications/ResolverSettings;->mComponentOrders:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 83
    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/ResolverSettings;->mResolveArray:Landroid/util/SparseArray;

    .line 84
    iget-object v0, p0, Lcom/android/settings/applications/ResolverSettings;->mOriginResolveList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 85
    invoke-direct {p0, v1}, Lcom/android/settings/applications/ResolverSettings;->buildComponent(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;

    move-result-object v2

    .line 86
    iget-object v3, p0, Lcom/android/settings/applications/ResolverSettings;->mOrderMap:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 87
    iget-object v3, p0, Lcom/android/settings/applications/ResolverSettings;->mResolveArray:Landroid/util/SparseArray;

    iget-object v4, p0, Lcom/android/settings/applications/ResolverSettings;->mOrderMap:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v3, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    .line 89
    :cond_1
    iget-object v3, p0, Lcom/android/settings/applications/ResolverSettings;->mComponentOrders:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .line 90
    iget-object v4, p0, Lcom/android/settings/applications/ResolverSettings;->mResolveArray:Landroid/util/SparseArray;

    invoke-virtual {v4, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 91
    iget-object v1, p0, Lcom/android/settings/applications/ResolverSettings;->mOrderMap:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    iget-object v1, p0, Lcom/android/settings/applications/ResolverSettings;->mComponentOrders:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    .line 93
    iput-boolean v1, p0, Lcom/android/settings/applications/ResolverSettings;->mOrderChanged:Z

    goto :goto_1

    :cond_2
    return-void
.end method


# virtual methods
.method public doInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 108
    sget p0, Lcom/android/settings/R$layout;->resolver_settings:I

    const/4 p3, 0x0

    invoke-virtual {p1, p0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 60
    invoke-super {p0, p1}, Lcom/android/settings/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 62
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string/jumbo v0, "rlist"

    .line 63
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/ResolverSettings;->mOriginResolveList:Ljava/util/List;

    if-nez p1, :cond_0

    .line 65
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/settings/applications/ResolverSettings;->mOriginResolveList:Ljava/util/List;

    .line 68
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1}, Landroid/provider/MiuiSettings$System;->getActivityResolveOrder(Landroid/content/ContentResolver;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/ResolverSettings;->mComponentOrders:Ljava/util/List;

    .line 69
    invoke-direct {p0}, Lcom/android/settings/applications/ResolverSettings;->updateMapAndArray()V

    .line 71
    new-instance p1, Lcom/android/settings/applications/ResolverSettings$ResolverListAdapter;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/android/settings/applications/ResolverSettings$ResolverListAdapter;-><init>(Lcom/android/settings/applications/ResolverSettings;Lcom/android/settings/applications/ResolverSettings$ResolverListAdapter-IA;)V

    iput-object p1, p0, Lcom/android/settings/applications/ResolverSettings;->mAdapter:Lcom/android/settings/applications/ResolverSettings$ResolverListAdapter;

    .line 72
    iget-object v0, p0, Lcom/android/settings/applications/ResolverSettings;->mResolveArray:Landroid/util/SparseArray;

    invoke-virtual {p1, v0}, Lcom/android/settings/applications/ResolverSettings$ResolverListAdapter;->setArray(Landroid/util/SparseArray;)V

    .line 73
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    .line 74
    invoke-virtual {p1}, Landroid/app/ActivityManager;->getLauncherLargeIconSize()I

    move-result p1

    iput p1, p0, Lcom/android/settings/applications/ResolverSettings;->mIconSize:I

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 100
    invoke-super {p0}, Lmiuix/appcompat/app/Fragment;->onDestroy()V

    .line 101
    iget-boolean v0, p0, Lcom/android/settings/applications/ResolverSettings;->mOrderChanged:Z

    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/applications/ResolverSettings;->mComponentOrders:Ljava/util/List;

    invoke-static {v0, p0}, Landroid/provider/MiuiSettings$System;->putActivityResolveOrder(Landroid/content/ContentResolver;Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 116
    invoke-super {p0, p1, p2}, Lcom/android/settings/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method
