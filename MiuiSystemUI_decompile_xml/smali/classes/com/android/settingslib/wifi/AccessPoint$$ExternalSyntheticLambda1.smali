.class public final synthetic Lcom/android/settingslib/wifi/AccessPoint$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

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
