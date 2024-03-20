.class final Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatDexLoader;
.super Ljava/lang/Object;
.source "SplitCompatDexLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatDexLoader$V23;,
        Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatDexLoader$V19;,
        Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatDexLoader$V14;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SplitCompatDexLoader"

.field private static sPatchDexCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static load(Ljava/lang/ClassLoader;Ljava/io/File;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Ljava/io/File;",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 26
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 28
    invoke-static {p0, p2, p1}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatDexLoader$V23;->-$$Nest$smload(Ljava/lang/ClassLoader;Ljava/util/List;Ljava/io/File;)V

    .line 36
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p0

    sput p0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatDexLoader;->sPatchDexCount:I

    :cond_0
    return-void
.end method

.method static unLoad(Ljava/lang/ClassLoader;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 41
    sget v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatDexLoader;->sPatchDexCount:I

    if-gtz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "pathList"

    .line 45
    invoke-static {p0, v0}, Lcom/iqiyi/android/qigsaw/core/splitload/HiddenApiReflection;->findField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 46
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "dexElements"

    .line 47
    sget v1, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatDexLoader;->sPatchDexCount:I

    invoke-static {p0, v0, v1}, Lcom/iqiyi/android/qigsaw/core/splitload/HiddenApiReflection;->reduceFieldArray(Ljava/lang/Object;Ljava/lang/String;I)V

    return-void
.end method
