.class public final Lcom/android/systemui/ForegroundServicesUserState;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final mAppOps:Landroid/util/ArrayMap;

.field public final mImportantNotifications:Landroid/util/ArrayMap;

.field public mRunning:[Ljava/lang/String;

.field public mServiceStartTime:J

.field public final mStandardLayoutNotifications:Landroid/util/ArrayMap;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/android/systemui/ForegroundServicesUserState;->mRunning:[Ljava/lang/String;

    .line 6
    const-wide/16 v0, 0x0

    .line 8
    iput-wide v0, p0, Lcom/android/systemui/ForegroundServicesUserState;->mServiceStartTime:J

    .line 10
    new-instance v0, Landroid/util/ArrayMap;

    .line 12
    const/4 v1, 0x1

    .line 14
    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    .line 15
    iput-object v0, p0, Lcom/android/systemui/ForegroundServicesUserState;->mImportantNotifications:Landroid/util/ArrayMap;

    .line 18
    new-instance v0, Landroid/util/ArrayMap;

    .line 20
    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    .line 22
    iput-object v0, p0, Lcom/android/systemui/ForegroundServicesUserState;->mStandardLayoutNotifications:Landroid/util/ArrayMap;

    .line 25
    new-instance v0, Landroid/util/ArrayMap;

    .line 27
    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    .line 29
    iput-object v0, p0, Lcom/android/systemui/ForegroundServicesUserState;->mAppOps:Landroid/util/ArrayMap;

    .line 32
    return-void
    .line 34
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string v1, "UserServices{mRunning="

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    iget-object v1, p0, Lcom/android/systemui/ForegroundServicesUserState;->mRunning:[Ljava/lang/String;

    .line 9
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 11
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    const-string v1, ", mServiceStartTime="

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    iget-wide v1, p0, Lcom/android/systemui/ForegroundServicesUserState;->mServiceStartTime:J

    .line 23
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 25
    const-string v1, ", mImportantNotifications="

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    iget-object v1, p0, Lcom/android/systemui/ForegroundServicesUserState;->mImportantNotifications:Landroid/util/ArrayMap;

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 35
    const-string v1, ", mStandardLayoutNotifications="

    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    iget-object p0, p0, Lcom/android/systemui/ForegroundServicesUserState;->mStandardLayoutNotifications:Landroid/util/ArrayMap;

    .line 43
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 45
    const/16 p0, 0x7d

    .line 48
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    move-result-object p0

    .line 56
    return-object p0
    .line 57
.end method
