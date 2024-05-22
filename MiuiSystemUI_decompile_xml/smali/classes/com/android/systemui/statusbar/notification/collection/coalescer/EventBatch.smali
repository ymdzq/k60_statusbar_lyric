.class public final Lcom/android/systemui/statusbar/notification/collection/coalescer/EventBatch;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public mCancelShortTimeout:Lcom/android/systemui/util/concurrency/ExecutorImpl$ExecutionToken;

.field public final mCreatedTimestamp:J

.field public final mGroupKey:Ljava/lang/String;

.field public final mMembers:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coalescer/EventBatch;->mMembers:Ljava/util/List;

    .line 10
    iput-wide p2, p0, Lcom/android/systemui/statusbar/notification/collection/coalescer/EventBatch;->mCreatedTimestamp:J

    .line 12
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coalescer/EventBatch;->mGroupKey:Ljava/lang/String;

    .line 14
    return-void
    .line 16
.end method
