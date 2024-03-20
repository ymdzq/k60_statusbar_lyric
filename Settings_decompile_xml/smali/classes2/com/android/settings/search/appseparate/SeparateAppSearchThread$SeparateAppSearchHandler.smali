.class Lcom/android/settings/search/appseparate/SeparateAppSearchThread$SeparateAppSearchHandler;
.super Landroid/os/Handler;
.source "SeparateAppSearchThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/search/appseparate/SeparateAppSearchThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SeparateAppSearchHandler"
.end annotation


# instance fields
.field private mFragmentRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/settings/SettingsFragment;",
            ">;"
        }
    .end annotation
.end field

.field private mIsSeparateAppSearchInited:Z


# direct methods
.method private constructor <init>(Landroid/os/Looper;Lcom/android/settings/SettingsFragment;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 p1, 0x0

    .line 42
    iput-boolean p1, p0, Lcom/android/settings/search/appseparate/SeparateAppSearchThread$SeparateAppSearchHandler;->mIsSeparateAppSearchInited:Z

    .line 46
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/settings/search/appseparate/SeparateAppSearchThread$SeparateAppSearchHandler;->mFragmentRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Looper;Lcom/android/settings/SettingsFragment;Lcom/android/settings/search/appseparate/SeparateAppSearchThread$SeparateAppSearchHandler-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/settings/search/appseparate/SeparateAppSearchThread$SeparateAppSearchHandler;-><init>(Landroid/os/Looper;Lcom/android/settings/SettingsFragment;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 51
    iget-object v0, p0, Lcom/android/settings/search/appseparate/SeparateAppSearchThread$SeparateAppSearchHandler;->mFragmentRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsFragment;

    if-nez v0, :cond_0

    return-void

    .line 55
    :cond_0
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    if-eq p1, v1, :cond_1

    goto :goto_0

    .line 69
    :cond_1
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-boolean p1, p0, Lcom/android/settings/search/appseparate/SeparateAppSearchThread$SeparateAppSearchHandler;->mIsSeparateAppSearchInited:Z

    if-eqz p1, :cond_4

    .line 70
    invoke-static {}, Lcom/android/settings/search/appseparate/SeparateAppSearchHelper;->releaseInstance()V

    .line 71
    invoke-static {}, Lcom/android/settingslib/search/KeywordsCloudConfigHelper;->releaseInstance()V

    const/4 p1, 0x0

    .line 72
    iput-boolean p1, p0, Lcom/android/settings/search/appseparate/SeparateAppSearchThread$SeparateAppSearchHandler;->mIsSeparateAppSearchInited:Z

    goto :goto_0

    .line 58
    :cond_2
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-boolean p1, p0, Lcom/android/settings/search/appseparate/SeparateAppSearchThread$SeparateAppSearchHandler;->mIsSeparateAppSearchInited:Z

    if-nez p1, :cond_4

    .line 59
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    if-nez p1, :cond_3

    return-void

    .line 63
    :cond_3
    invoke-static {p1}, Lcom/android/settings/search/appseparate/SeparateAppSearchHelper;->getInstance(Landroid/content/Context;)Lcom/android/settings/search/appseparate/SeparateAppSearchHelper;

    .line 64
    iput-boolean v1, p0, Lcom/android/settings/search/appseparate/SeparateAppSearchThread$SeparateAppSearchHandler;->mIsSeparateAppSearchInited:Z

    .line 65
    invoke-static {p1}, Lcom/android/settingslib/search/KeywordsCloudConfigHelper;->getInstance(Landroid/content/Context;)Lcom/android/settingslib/search/KeywordsCloudConfigHelper;

    :cond_4
    :goto_0
    return-void
.end method
