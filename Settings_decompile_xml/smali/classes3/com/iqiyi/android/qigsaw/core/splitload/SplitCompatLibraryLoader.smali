.class final Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatLibraryLoader;
.super Ljava/lang/Object;
.source "SplitCompatLibraryLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatLibraryLoader$V25;,
        Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatLibraryLoader$V23;,
        Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatLibraryLoader$V14;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SplitCompatLibraryLoader"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static load(Ljava/lang/ClassLoader;Ljava/io/File;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-string v0, "SplitCompatLibraryLoader"

    if-eqz p1, :cond_1

    .line 32
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 41
    :cond_0
    :try_start_0
    invoke-static {p0, p1}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatLibraryLoader$V25;->-$$Nest$smload(Ljava/lang/ClassLoader;Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 45
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 46
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v2, v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "load, v25 fail, sdk: %d, error: %s, try to fallback to V23"

    .line 45
    invoke-static {v0, v2, v1}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 47
    invoke-static {p0, p1}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatLibraryLoader$V23;->-$$Nest$smload(Ljava/lang/ClassLoader;Ljava/io/File;)V

    :goto_0
    return-void

    :cond_1
    :goto_1
    const-string p0, "load, folder %s is illegal"

    .line 33
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
