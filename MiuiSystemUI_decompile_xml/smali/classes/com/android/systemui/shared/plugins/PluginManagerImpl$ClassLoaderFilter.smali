.class public final Lcom/android/systemui/shared/plugins/PluginManagerImpl$ClassLoaderFilter;
.super Ljava/lang/ClassLoader;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final mBase:Ljava/lang/ClassLoader;

.field public final mPackages:[Ljava/lang/String;


# direct methods
.method public varargs constructor <init>(Ljava/lang/ClassLoader;[Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    .line 2
    move-result-object v0

    .line 5
    invoke-direct {p0, v0}, Ljava/lang/ClassLoader;-><init>(Ljava/lang/ClassLoader;)V

    .line 6
    iput-object p1, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl$ClassLoaderFilter;->mBase:Ljava/lang/ClassLoader;

    .line 9
    iput-object p2, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl$ClassLoaderFilter;->mPackages:[Ljava/lang/String;

    .line 11
    return-void
    .line 13
.end method


# virtual methods
.method public final loadClass(Ljava/lang/String;Z)Ljava/lang/Class;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl$ClassLoaderFilter;->mPackages:[Ljava/lang/String;

    .line 2
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    :goto_0
    if-ge v2, v1, :cond_1

    .line 6
    aget-object v3, v0, v2

    .line 8
    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 10
    move-result v3

    .line 13
    if-eqz v3, :cond_0

    .line 14
    iget-object p0, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl$ClassLoaderFilter;->mBase:Ljava/lang/ClassLoader;

    .line 16
    invoke-virtual {p0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 18
    move-result-object p0

    .line 21
    return-object p0

    .line 22
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 23
    goto :goto_0

    .line 25
    :cond_1
    invoke-super {p0, p1, p2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;Z)Ljava/lang/Class;

    .line 26
    move-result-object p0

    .line 29
    return-object p0
    .line 30
.end method
