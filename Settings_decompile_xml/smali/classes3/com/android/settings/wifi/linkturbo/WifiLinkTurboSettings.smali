.class public Lcom/android/settings/wifi/linkturbo/WifiLinkTurboSettings;
.super Lmiuix/appcompat/app/AppCompatActivity;
.source "WifiLinkTurboSettings.java"

# interfaces
.implements Lcom/android/settings/wifi/linkturbo/WifiLinkTurboOptions$FragmentListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/linkturbo/WifiLinkTurboSettings$AppAdapter;,
        Lcom/android/settings/wifi/linkturbo/WifiLinkTurboSettings$AppItem;
    }
.end annotation


# instance fields
.field public mAdapter:Lcom/android/settings/wifi/linkturbo/WifiLinkTurboSettings$AppAdapter;

.field private mAppRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field public mFlag:I

.field private mLinkTurboAppDataTrafficTaskWithProgress:Lcom/android/settings/wifi/linkturbo/LinkTurboAppDataTrafficTaskWithProgress;

.field public mLinkTurboClient:Lcom/android/settings/wifi/linkturbo/LinkTurboClient;

.field private mMainHandler:Landroid/os/Handler;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field public mRecommendApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/wifi/linkturbo/WifiLinkTurboSettings$AppItem;",
            ">;"
        }
    .end annotation
.end field

.field private mRecommendAppsLoaded:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetmAppRecyclerView(Lcom/android/settings/wifi/linkturbo/WifiLinkTurboSettings;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/wifi/linkturbo/WifiLinkTurboSettings;->mAppRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPackageManager(Lcom/android/settings/wifi/linkturbo/WifiLinkTurboSettings;)Landroid/content/pm/PackageManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/wifi/linkturbo/WifiLinkTurboSettings;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mcancelLoadPackage(Lcom/android/settings/wifi/linkturbo/WifiLinkTurboSettings;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/wifi/linkturbo/WifiLinkTurboSettings;->cancelLoadPackage()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mloadPackages(Lcom/android/settings/wifi/linkturbo/WifiLinkTurboSettings;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/wifi/linkturbo/WifiLinkTurboSettings;->loadPackages()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Lmiuix/appcompat/app/AppCompatActivity;-><init>()V

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/linkturbo/WifiLinkTurboSettings;->mRecommendApps:Ljava/util/List;

    .line 51
    new-instance v0, Lcom/android/settings/wifi/linkturbo/WifiLinkTurboSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/linkturbo/WifiLinkTurboSettings$1;-><init>(Lcom/android/settings/wifi/linkturbo/WifiLinkTurboSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/linkturbo/WifiLinkTurboSettings;->mMainHandler:Landroid/os/Handler;

    return-void
.end method

.method private cancelLoadPackage()V
    .locals 1

    .line 310
    iget-object v0, p0, Lcom/android/settings/wifi/linkturbo/WifiLinkTurboSettings;->mLinkTurboAppDataTrafficTaskWithProgress:Lcom/android/settings/wifi/linkturbo/LinkTurboAppDataTrafficTaskWithProgress;

    if-eqz v0, :cond_0

    .line 311
    invoke-virtual {v0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 312
    iget-object p0, p0, Lcom/android/settings/wifi/linkturbo/WifiLinkTurboSettings;->mLinkTurboAppDataTrafficTaskWithProgress:Lcom/android/settings/wifi/linkturbo/LinkTurboAppDataTrafficTaskWithProgress;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_0
    return-void
.end method

.method private loadPackages()V
    .locals 2

    .line 299
    iget v0, p0, Lcom/android/settings/wifi/linkturbo/WifiLinkTurboSettings;->mFlag:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/wifi/linkturbo/WifiLinkTurboSettings;->mRecommendAppsLoaded:Z

    if-eqz v0, :cond_0

    return-void

    .line 302
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/wifi/linkturbo/WifiLinkTurboSettings;->cancelLoadPackage()V

    .line 303
    new-instance v0, Lcom/android/settings/wifi/linkturbo/LinkTurboAppDataTrafficTaskWithProgress;

    invoke-direct {v0}, Lcom/android/settings/wifi/linkturbo/LinkTurboAppDataTrafficTaskWithProgress;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/linkturbo/WifiLinkTurboSettings;->mLinkTurboAppDataTrafficTaskWithProgress:Lcom/android/settings/wifi/linkturbo/LinkTurboAppDataTrafficTaskWithProgress;

    .line 304
    invoke-virtual {v0, p0}, Lcom/android/settings/wifi/linkturbo/LinkTurboAppDataTrafficTaskWithProgress;->setContext(Lcom/android/settings/wifi/linkturbo/WifiLinkTurboSettings;)V

    .line 305
    iget-object v0, p0, Lcom/android/settings/wifi/linkturbo/WifiLinkTurboSettings;->mLinkTurboAppDataTrafficTaskWithProgress:Lcom/android/settings/wifi/linkturbo/LinkTurboAppDataTrafficTaskWithProgress;

    iget-object v1, p0, Lcom/android/settings/wifi/linkturbo/WifiLinkTurboSettings;->mLinkTurboClient:Lcom/android/settings/wifi/linkturbo/LinkTurboClient;

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/linkturbo/LinkTurboAppDataTrafficTaskWithProgress;->setLinkTurboClient(Lcom/android/settings/wifi/linkturbo/LinkTurboClient;)V

    .line 306
    iget-object p0, p0, Lcom/android/settings/wifi/linkturbo/WifiLinkTurboSettings;->mLinkTurboAppDataTrafficTaskWithProgress:Lcom/android/settings/wifi/linkturbo/LinkTurboAppDataTrafficTaskWithProgress;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {p0, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method


# virtual methods
.method public enableWifiLinkTurbo(Z)V
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/android/settings/wifi/linkturbo/WifiLinkTurboSettings;->mLinkTurboClient:Lcom/android/settings/wifi/linkturbo/LinkTurboClient;

    if-eqz v0, :cond_0

    .line 142
    invoke-virtual {v0, p1}, Lcom/android/settings/wifi/linkturbo/LinkTurboClient;->setLinkTurboEnable(Z)Z

    .line 143
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "linkturbo_is_enable"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    return-void
.end method

.method public enableWifiLinkTurboCallback(Z)V
    .locals 3

    .line 114
    iget-object v0, p0, Lcom/android/settings/wifi/linkturbo/WifiLinkTurboSettings;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 115
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 116
    iget-object p0, p0, Lcom/android/settings/wifi/linkturbo/WifiLinkTurboSettings;->mMainHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public getAppItem(Landroid/content/pm/ApplicationInfo;IZJJ)Lcom/android/settings/wifi/linkturbo/WifiLinkTurboSettings$AppItem;
    .locals 10

    .line 295
    new-instance v9, Lcom/android/settings/wifi/linkturbo/WifiLinkTurboSettings$AppItem;

    move-object v0, v9

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-wide v5, p4

    move-wide/from16 v7, p6

    invoke-direct/range {v0 .. v8}, Lcom/android/settings/wifi/linkturbo/WifiLinkTurboSettings$AppItem;-><init>(Lcom/android/settings/wifi/linkturbo/WifiLinkTurboSettings;Landroid/content/pm/ApplicationInfo;IZJJ)V

    return-object v9
.end method

.method public isWifiLinkTurboEnabled()Z
    .locals 0

    .line 149
    iget-object p0, p0, Lcom/android/settings/wifi/linkturbo/WifiLinkTurboSettings;->mLinkTurboClient:Lcom/android/settings/wifi/linkturbo/LinkTurboClient;

    if-eqz p0, :cond_0

    .line 150
    invoke-virtual {p0}, Lcom/android/settings/wifi/linkturbo/LinkTurboClient;->getLinkTurboEnable()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 85
    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 86
    sget p1, Lcom/android/settings/R$layout;->wifi_link_turbo:I

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 87
    new-instance p1, Lcom/android/settings/wifi/linkturbo/LinkTurboClient;

    invoke-direct {p1, p0}, Lcom/android/settings/wifi/linkturbo/LinkTurboClient;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/wifi/linkturbo/WifiLinkTurboSettings;->mLinkTurboClient:Lcom/android/settings/wifi/linkturbo/LinkTurboClient;

    .line 88
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/linkturbo/WifiLinkTurboSettings;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 89
    sget p1, Lcom/android/settings/R$id;->link_turbo_app:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/android/settings/wifi/linkturbo/WifiLinkTurboSettings;->mAppRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 90
    new-instance p1, Lcom/android/settings/wifi/linkturbo/WifiLinkTurboSettings$AppAdapter;

    invoke-direct {p1, p0, p0}, Lcom/android/settings/wifi/linkturbo/WifiLinkTurboSettings$AppAdapter;-><init>(Lcom/android/settings/wifi/linkturbo/WifiLinkTurboSettings;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/wifi/linkturbo/WifiLinkTurboSettings;->mAdapter:Lcom/android/settings/wifi/linkturbo/WifiLinkTurboSettings$AppAdapter;

    .line 91
    iget-object p1, p0, Lcom/android/settings/wifi/linkturbo/WifiLinkTurboSettings;->mAppRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 92
    iget-object p1, p0, Lcom/android/settings/wifi/linkturbo/WifiLinkTurboSettings;->mAppRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/android/settings/wifi/linkturbo/WifiLinkTurboSettings;->mAdapter:Lcom/android/settings/wifi/linkturbo/WifiLinkTurboSettings$AppAdapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 93
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 v0, 0x8000000

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 94
    invoke-static {p0}, Lmiuix/appcompat/app/LayoutUiModeHelper;->autoSetLayoutUiMode(Landroid/app/Activity;)V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 134
    invoke-super {p0}, Lmiuix/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 135
    iget-object p0, p0, Lcom/android/settings/wifi/linkturbo/WifiLinkTurboSettings;->mLinkTurboClient:Lcom/android/settings/wifi/linkturbo/LinkTurboClient;

    if-eqz p0, :cond_0

    .line 136
    invoke-virtual {p0}, Lcom/android/settings/wifi/linkturbo/LinkTurboClient;->ShutDownLinkTurboService()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 0

    .line 128
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    .line 129
    invoke-direct {p0}, Lcom/android/settings/wifi/linkturbo/WifiLinkTurboSettings;->cancelLoadPackage()V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 99
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    const-string/jumbo v0, "wifi_link_turbo_click"

    const/4 v1, 0x0

    .line 100
    invoke-static {v0, v1}, Lcom/android/settingslib/util/OneTrackInterfaceUtils;->track(Ljava/lang/String;Ljava/util/Map;)V

    .line 101
    invoke-static {p0}, Lcom/android/settings/wifi/linkturbo/LinkTurboUtils;->getLinkTurboOptions(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/wifi/linkturbo/WifiLinkTurboSettings;->mFlag:I

    .line 102
    invoke-virtual {p0}, Lcom/android/settings/wifi/linkturbo/WifiLinkTurboSettings;->isWifiLinkTurboEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/android/settings/wifi/linkturbo/WifiLinkTurboSettings;->mAppRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 104
    invoke-direct {p0}, Lcom/android/settings/wifi/linkturbo/WifiLinkTurboSettings;->loadPackages()V

    goto :goto_0

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/linkturbo/WifiLinkTurboSettings;->mAppRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 108
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x8000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 109
    invoke-static {p0}, Lmiuix/appcompat/app/LayoutUiModeHelper;->autoSetLayoutUiMode(Landroid/app/Activity;)V

    return-void
.end method

.method public setAllApps(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settings/wifi/linkturbo/WifiLinkTurboSettings$AppItem;",
            ">;)V"
        }
    .end annotation

    .line 317
    iget v0, p0, Lcom/android/settings/wifi/linkturbo/WifiLinkTurboSettings;->mFlag:I

    if-nez v0, :cond_0

    .line 318
    iput-object p1, p0, Lcom/android/settings/wifi/linkturbo/WifiLinkTurboSettings;->mRecommendApps:Ljava/util/List;

    const/4 p1, 0x1

    .line 319
    iput-boolean p1, p0, Lcom/android/settings/wifi/linkturbo/WifiLinkTurboSettings;->mRecommendAppsLoaded:Z

    :cond_0
    return-void
.end method

.method public setLinkTurboOptionsCallback(I)V
    .locals 3

    .line 121
    iget-object v0, p0, Lcom/android/settings/wifi/linkturbo/WifiLinkTurboSettings;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 122
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 123
    iget-object p0, p0, Lcom/android/settings/wifi/linkturbo/WifiLinkTurboSettings;->mMainHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method
