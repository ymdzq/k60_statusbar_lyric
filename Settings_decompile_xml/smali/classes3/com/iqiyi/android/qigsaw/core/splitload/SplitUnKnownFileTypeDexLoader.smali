.class final Lcom/iqiyi/android/qigsaw/core/splitload/SplitUnKnownFileTypeDexLoader;
.super Ljava/lang/Object;
.source "SplitUnKnownFileTypeDexLoader.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SplitUnKnownFileTypeDexLoader"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static loadDex(Ljava/lang/ClassLoader;Ljava/util/List;Ljava/io/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 0
    return-void
.end method
