.class public abstract Lmiuix/core/util/IOUtils;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final STRING_WRITER_POOL:Lmiuix/core/util/Pools$SoftReferencePool;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/ThreadLocal;

    .line 2
    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    .line 4
    new-instance v0, Ljava/lang/ThreadLocal;

    .line 7
    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    .line 9
    new-instance v0, Lmiuix/core/util/IOUtils$1;

    .line 12
    const/4 v1, 0x0

    .line 14
    invoke-direct {v0, v1}, Lmiuix/core/util/IOUtils$1;-><init>(I)V

    .line 15
    sget-object v1, Lmiuix/core/util/Pools;->mSoftReferenceInstanceHolderMap:Ljava/util/HashMap;

    .line 18
    new-instance v1, Lmiuix/core/util/Pools$SoftReferencePool;

    .line 20
    const/4 v2, 0x2

    .line 22
    invoke-direct {v1, v0, v2}, Lmiuix/core/util/Pools$SoftReferencePool;-><init>(Lmiuix/core/util/Pools$Manager;I)V

    .line 23
    new-instance v0, Lmiuix/core/util/IOUtils$1;

    .line 26
    const/4 v1, 0x1

    .line 28
    invoke-direct {v0, v1}, Lmiuix/core/util/IOUtils$1;-><init>(I)V

    .line 29
    new-instance v1, Lmiuix/core/util/Pools$SoftReferencePool;

    .line 32
    invoke-direct {v1, v0, v2}, Lmiuix/core/util/Pools$SoftReferencePool;-><init>(Lmiuix/core/util/Pools$Manager;I)V

    .line 34
    new-instance v0, Lmiuix/core/util/IOUtils$1;

    .line 37
    invoke-direct {v0, v2}, Lmiuix/core/util/IOUtils$1;-><init>(I)V

    .line 39
    new-instance v1, Lmiuix/core/util/Pools$SoftReferencePool;

    .line 42
    invoke-direct {v1, v0, v2}, Lmiuix/core/util/Pools$SoftReferencePool;-><init>(Lmiuix/core/util/Pools$Manager;I)V

    .line 44
    sput-object v1, Lmiuix/core/util/IOUtils;->STRING_WRITER_POOL:Lmiuix/core/util/Pools$SoftReferencePool;

    .line 47
    invoke-virtual {v1}, Lmiuix/core/util/Pools$BasePool;->acquire()Ljava/lang/Object;

    .line 49
    move-result-object v0

    .line 52
    check-cast v0, Ljava/io/StringWriter;

    .line 53
    new-instance v2, Ljava/io/PrintWriter;

    .line 55
    invoke-direct {v2, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 57
    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    .line 60
    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V

    .line 63
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    .line 66
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

    .line 69
    invoke-virtual {v1, v0}, Lmiuix/core/util/Pools$BasePool;->doRelease(Ljava/lang/Object;)V

    .line 72
    return-void
    .line 75
.end method

.method public static closeQuietly(Ljava/io/InputStream;)V
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    :catch_0
    :cond_0
    return-void
    .line 7
.end method
