.class public Lcom/miui/maml/folme/ConfigValue;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public mDelay:J

.field public mEase:Lmiuix/animation/utils/EaseManager$EaseStyle;

.field public mFromSpeed:F

.field public mHasFromSpeed:Z

.field public mOnBeginCallback:Landroidx/collection/ArraySet;

.field public mOnCompleteCallback:Landroidx/collection/ArraySet;

.field public mOnUpdateCallback:Landroidx/collection/ArraySet;

.field public mRelatedProperty:Landroidx/collection/ArraySet;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    .line 5
    iput v0, p0, Lcom/miui/maml/folme/ConfigValue;->mFromSpeed:F

    .line 8
    new-instance v0, Landroidx/collection/ArraySet;

    .line 10
    const/4 v1, 0x0

    .line 12
    invoke-direct {v0, v1}, Landroidx/collection/ArraySet;-><init>(I)V

    .line 13
    iput-object v0, p0, Lcom/miui/maml/folme/ConfigValue;->mRelatedProperty:Landroidx/collection/ArraySet;

    .line 16
    new-instance v0, Landroidx/collection/ArraySet;

    .line 18
    invoke-direct {v0, v1}, Landroidx/collection/ArraySet;-><init>(I)V

    .line 20
    iput-object v0, p0, Lcom/miui/maml/folme/ConfigValue;->mOnUpdateCallback:Landroidx/collection/ArraySet;

    .line 23
    new-instance v0, Landroidx/collection/ArraySet;

    .line 25
    invoke-direct {v0, v1}, Landroidx/collection/ArraySet;-><init>(I)V

    .line 27
    iput-object v0, p0, Lcom/miui/maml/folme/ConfigValue;->mOnBeginCallback:Landroidx/collection/ArraySet;

    .line 30
    new-instance v0, Landroidx/collection/ArraySet;

    .line 32
    invoke-direct {v0, v1}, Landroidx/collection/ArraySet;-><init>(I)V

    .line 34
    iput-object v0, p0, Lcom/miui/maml/folme/ConfigValue;->mOnCompleteCallback:Landroidx/collection/ArraySet;

    .line 37
    return-void
    .line 39
.end method
