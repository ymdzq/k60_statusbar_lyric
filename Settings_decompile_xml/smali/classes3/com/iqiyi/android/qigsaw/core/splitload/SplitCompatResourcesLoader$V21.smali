.class Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$V21;
.super Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;
.source "SplitCompatResourcesLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "V21"
.end annotation


# direct methods
.method static bridge synthetic -$$Nest$sminstallSplitResDirs(Landroid/content/res/Resources;Ljava/util/List;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$V21;->installSplitResDirs(Landroid/content/res/Resources;Ljava/util/List;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 185
    invoke-direct {p0, v0}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;-><init>(Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat-IA;)V

    return-void
.end method

.method private static installSplitResDirs(Landroid/content/res/Resources;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 188
    invoke-static {}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->getAddAssetPathMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    .line 189
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 190
    invoke-virtual {p0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method
