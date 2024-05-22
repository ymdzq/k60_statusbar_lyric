.class public final Lcom/android/systemui/biometrics/FaceHelpMessageDeferral;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# instance fields
.field public final acquiredInfoToFrequency:Ljava/util/Map;

.field public final acquiredInfoToHelpString:Ljava/util/Map;

.field public final logBuffer:Lcom/android/keyguard/logging/FaceMessageDeferralLogger;

.field public final messagesToDefer:Ljava/util/Set;

.field public mostFrequentAcquiredInfoToDefer:Ljava/lang/Integer;

.field public final threshold:F

.field public totalFrames:I


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Lcom/android/keyguard/logging/FaceMessageDeferralLogger;Lcom/android/systemui/dump/DumpManager;)V
    .locals 5

    .line 1
    const v0, 0x7f030055    # @array/config_face_help_msgs_defer_until_timeout

    .line 2
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    .line 5
    move-result-object v0

    .line 8
    new-instance v1, Ljava/util/HashSet;

    .line 9
    array-length v2, v0

    .line 11
    invoke-static {v2}, Lkotlin/collections/MapsKt__MapsJVMKt;->mapCapacity(I)I

    .line 12
    move-result v2

    .line 15
    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    .line 16
    array-length v2, v0

    .line 19
    const/4 v3, 0x0

    .line 20
    :goto_0
    if-ge v3, v2, :cond_0

    .line 21
    aget v4, v0, v3

    .line 23
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    move-result-object v4

    .line 28
    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 29
    add-int/lit8 v3, v3, 0x1

    .line 32
    goto :goto_0

    .line 34
    :cond_0
    const v0, 0x7f0701f5    # @dimen/config_face_help_msgs_defer_until_timeout_threshold '0.75'

    .line 35
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getFloat(I)F

    .line 38
    move-result p1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object v1, p0, Lcom/android/systemui/biometrics/FaceHelpMessageDeferral;->messagesToDefer:Ljava/util/Set;

    .line 45
    iput p1, p0, Lcom/android/systemui/biometrics/FaceHelpMessageDeferral;->threshold:F

    .line 47
    iput-object p2, p0, Lcom/android/systemui/biometrics/FaceHelpMessageDeferral;->logBuffer:Lcom/android/keyguard/logging/FaceMessageDeferralLogger;

    .line 49
    new-instance p1, Ljava/util/HashMap;

    .line 51
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/android/systemui/biometrics/FaceHelpMessageDeferral;->acquiredInfoToFrequency:Ljava/util/Map;

    .line 56
    new-instance p1, Ljava/util/HashMap;

    .line 58
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/android/systemui/biometrics/FaceHelpMessageDeferral;->acquiredInfoToHelpString:Ljava/util/Map;

    .line 63
    const-class p1, Lcom/android/systemui/biometrics/FaceHelpMessageDeferral;

    .line 65
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 67
    move-result-object p1

    .line 70
    sget-object p2, Lcom/android/systemui/dump/DumpPriority;->CRITICAL:Lcom/android/systemui/dump/DumpPriority;

    .line 71
    invoke-virtual {p3, p1, p0, p2}, Lcom/android/systemui/dump/DumpManager;->registerDumpable(Ljava/lang/String;Lcom/android/systemui/Dumpable;Lcom/android/systemui/dump/DumpPriority;)V

    .line 73
    return-void
    .line 76
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance p2, Ljava/lang/StringBuilder;

    .line 2
    const-string v0, "messagesToDefer="

    .line 4
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/android/systemui/biometrics/FaceHelpMessageDeferral;->messagesToDefer:Ljava/util/Set;

    .line 9
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    move-result-object p2

    .line 17
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 18
    iget p2, p0, Lcom/android/systemui/biometrics/FaceHelpMessageDeferral;->totalFrames:I

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    .line 23
    const-string/jumbo v1, "totalFrames="

    .line 25
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    move-result-object p2

    .line 37
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 38
    new-instance p2, Ljava/lang/StringBuilder;

    .line 41
    const-string/jumbo v0, "threshold="

    .line 43
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    iget p0, p0, Lcom/android/systemui/biometrics/FaceHelpMessageDeferral;->threshold:F

    .line 49
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    move-result-object p0

    .line 57
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 58
    return-void
    .line 61
.end method
