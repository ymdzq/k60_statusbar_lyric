.class public Lcom/iqiyi/android/qigsaw/core/splitload/compat/NativePathMapperImpl;
.super Ljava/lang/Object;
.source "NativePathMapperImpl.java"

# interfaces
.implements Lcom/iqiyi/android/qigsaw/core/splitload/compat/NativePathMapper;


# instance fields
.field private final mapper:Lcom/iqiyi/android/qigsaw/core/splitload/compat/NativePathMapper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    invoke-direct {p0, p1}, Lcom/iqiyi/android/qigsaw/core/splitload/compat/NativePathMapperImpl;->needUseCommonSoDir(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 16
    new-instance v0, Lcom/iqiyi/android/qigsaw/core/splitload/compat/PathMapperV21;

    invoke-direct {v0, p1}, Lcom/iqiyi/android/qigsaw/core/splitload/compat/PathMapperV21;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iqiyi/android/qigsaw/core/splitload/compat/NativePathMapperImpl;->mapper:Lcom/iqiyi/android/qigsaw/core/splitload/compat/NativePathMapper;

    goto :goto_0

    .line 18
    :cond_0
    new-instance v0, Lcom/iqiyi/android/qigsaw/core/splitload/compat/PathMapperAbove21;

    invoke-direct {v0, p1}, Lcom/iqiyi/android/qigsaw/core/splitload/compat/PathMapperAbove21;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iqiyi/android/qigsaw/core/splitload/compat/NativePathMapperImpl;->mapper:Lcom/iqiyi/android/qigsaw/core/splitload/compat/NativePathMapper;

    :goto_0
    return-void
.end method

.method private needUseCommonSoDir(Landroid/content/Context;)Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public map(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 24
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 27
    :cond_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    monitor-enter v0

    .line 28
    :try_start_0
    iget-object p0, p0, Lcom/iqiyi/android/qigsaw/core/splitload/compat/NativePathMapperImpl;->mapper:Lcom/iqiyi/android/qigsaw/core/splitload/compat/NativePathMapper;

    invoke-interface {p0, p1, p2}, Lcom/iqiyi/android/qigsaw/core/splitload/compat/NativePathMapper;->map(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 29
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    return-object p2
.end method
