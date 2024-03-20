.class Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$DefaultSplitResourcesLoader;
.super Ljava/lang/Object;
.source "SplitCompatResourcesLoader.java"

# interfaces
.implements Lcom/iqiyi/android/qigsaw/core/splitload/compat/SplitResourcesLoader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DefaultSplitResourcesLoader"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 566
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$DefaultSplitResourcesLoader-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$DefaultSplitResourcesLoader;-><init>()V

    return-void
.end method


# virtual methods
.method public loadResources(Landroid/content/Context;Landroid/content/res/Resources;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 570
    invoke-static {p1, p2}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader;->-$$Nest$smcheckOrUpdateResources(Landroid/content/Context;Landroid/content/res/Resources;)V

    return-void
.end method

.method public loadResources(Landroid/content/Context;Landroid/content/res/Resources;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 575
    invoke-virtual {p2}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    invoke-static {p0}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader;->-$$Nest$smgetLoadedResourcesDirs(Landroid/content/res/AssetManager;)Ljava/util/List;

    move-result-object p0

    .line 576
    invoke-interface {p0, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 577
    invoke-static {p3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p1, p2, p0}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader;->-$$Nest$sminstallSplitResDirs(Landroid/content/Context;Landroid/content/res/Resources;Ljava/util/List;)V

    const-string p0, "Install split %s resources for application."

    .line 578
    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "SplitCompatResourcesLoader"

    invoke-static {p2, p0, p1}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
