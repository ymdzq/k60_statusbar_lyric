.class public abstract Landroidx/lifecycle/ViewModel;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mBagOfTags:Ljava/util/Map;

.field public final mCloseables:Ljava/util/Set;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    .line 5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    iput-object v0, p0, Landroidx/lifecycle/ViewModel;->mBagOfTags:Ljava/util/Map;

    .line 10
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 12
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 14
    iput-object v0, p0, Landroidx/lifecycle/ViewModel;->mCloseables:Ljava/util/Set;

    .line 17
    return-void
    .line 19
.end method


# virtual methods
.method public onCleared()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method
