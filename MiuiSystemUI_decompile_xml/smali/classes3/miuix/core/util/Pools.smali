.class public abstract Lmiuix/core/util/Pools;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final mSoftReferenceInstanceHolderMap:Ljava/util/HashMap;

.field public static final mStringBuilderPool:Lmiuix/core/util/Pools$SoftReferencePool;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 7
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 9
    sput-object v0, Lmiuix/core/util/Pools;->mSoftReferenceInstanceHolderMap:Ljava/util/HashMap;

    .line 12
    new-instance v0, Lmiuix/core/util/Pools$1;

    .line 14
    invoke-direct {v0}, Lmiuix/core/util/Pools$1;-><init>()V

    .line 16
    new-instance v1, Lmiuix/core/util/Pools$SoftReferencePool;

    .line 19
    const/4 v2, 0x4

    .line 21
    invoke-direct {v1, v0, v2}, Lmiuix/core/util/Pools$SoftReferencePool;-><init>(Lmiuix/core/util/Pools$Manager;I)V

    .line 22
    sput-object v1, Lmiuix/core/util/Pools;->mStringBuilderPool:Lmiuix/core/util/Pools$SoftReferencePool;

    .line 25
    return-void
    .line 27
.end method
