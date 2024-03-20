.class Lcom/iqiyi/android/qigsaw/core/splitload/compat/PathMapperV21$1;
.super Ljava/lang/Object;
.source "PathMapperV21.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iqiyi/android/qigsaw/core/splitload/compat/PathMapperV21;->checkIfNeedMapPath(Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iqiyi/android/qigsaw/core/splitload/compat/PathMapperV21;


# direct methods
.method constructor <init>(Lcom/iqiyi/android/qigsaw/core/splitload/compat/PathMapperV21;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/iqiyi/android/qigsaw/core/splitload/compat/PathMapperV21$1;->this$0:Lcom/iqiyi/android/qigsaw/core/splitload/compat/PathMapperV21;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    .line 81
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, ".so"

    invoke-virtual {p2, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
