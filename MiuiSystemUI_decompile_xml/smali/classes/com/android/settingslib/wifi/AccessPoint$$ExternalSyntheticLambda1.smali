.class public final synthetic Lcom/android/settingslib/wifi/AccessPoint$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:J

.field public final synthetic f$1:Ljava/util/Iterator;


# direct methods
.method public synthetic constructor <init>(JLjava/util/Iterator;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lcom/android/settingslib/wifi/AccessPoint$$ExternalSyntheticLambda1;->f$0:J

    .line 5
    iput-object p3, p0, Lcom/android/settingslib/wifi/AccessPoint$$ExternalSyntheticLambda1;->f$1:Ljava/util/Iterator;

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/android/settingslib/wifi/AccessPoint$$ExternalSyntheticLambda1;->f$0:J

    .line 2
    iget-object p0, p0, Lcom/android/settingslib/wifi/AccessPoint$$ExternalSyntheticLambda1;->f$1:Ljava/util/Iterator;

    .line 4
    check-cast p1, Lcom/android/settingslib/wifi/TimestampedScoredNetwork;

    .line 6
    iget-wide v2, p1, Lcom/android/settingslib/wifi/TimestampedScoredNetwork;->mUpdatedTimestampMillis:J

    .line 8
    cmp-long p1, v2, v0

    .line 10
    if-gez p1, :cond_0

    .line 12
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    .line 14
    :cond_0
    return-void
    .line 17
.end method
