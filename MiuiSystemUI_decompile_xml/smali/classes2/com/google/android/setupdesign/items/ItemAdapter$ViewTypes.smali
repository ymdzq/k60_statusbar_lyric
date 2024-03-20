.class public final Lcom/google/android/setupdesign/items/ItemAdapter$ViewTypes;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public nextPosition:I

.field public final positionMap:Landroid/util/SparseIntArray;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/util/SparseIntArray;

    .line 5
    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/google/android/setupdesign/items/ItemAdapter$ViewTypes;->positionMap:Landroid/util/SparseIntArray;

    .line 10
    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lcom/google/android/setupdesign/items/ItemAdapter$ViewTypes;->nextPosition:I

    .line 13
    return-void
    .line 15
.end method
