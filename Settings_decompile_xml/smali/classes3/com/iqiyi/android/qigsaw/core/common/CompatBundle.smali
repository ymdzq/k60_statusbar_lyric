.class public Lcom/iqiyi/android/qigsaw/core/common/CompatBundle;
.super Ljava/lang/Object;
.source "CompatBundle.java"


# static fields
.field public static final instance:Lcom/iqiyi/android/qigsaw/core/common/ICompatBundle;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 13
    const-class v0, Lcom/iqiyi/android/qigsaw/core/common/ICompatBundle;

    invoke-static {v0}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;)Ljava/util/ServiceLoader;

    move-result-object v0

    .line 14
    invoke-virtual {v0}, Ljava/util/ServiceLoader;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iqiyi/android/qigsaw/core/common/ICompatBundle;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-object v0, Lcom/iqiyi/android/qigsaw/core/common/CompatBundle;->instance:Lcom/iqiyi/android/qigsaw/core/common/ICompatBundle;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
