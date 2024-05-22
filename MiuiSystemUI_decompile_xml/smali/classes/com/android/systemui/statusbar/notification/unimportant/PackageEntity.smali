.class public final Lcom/android/systemui/statusbar/notification/unimportant/PackageEntity;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public mDailyClick:I

.field public mDailyShow:I

.field public mDataChanged:Z

.field public mHistoryClick:I

.field public mHistoryShow:I

.field public final mLock:Ljava/lang/Object;

.field public final mPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    .line 5
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/unimportant/PackageEntity;->mLock:Ljava/lang/Object;

    .line 10
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/unimportant/PackageEntity;->mPackageName:Ljava/lang/String;

    .line 12
    return-void
    .line 14
.end method


# virtual methods
.method public final onDateChanged(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/unimportant/PackageEntity;->mLock:Ljava/lang/Object;

    .line 2
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    :try_start_0
    iput v1, p0, Lcom/android/systemui/statusbar/notification/unimportant/PackageEntity;->mDailyClick:I

    .line 6
    iput v1, p0, Lcom/android/systemui/statusbar/notification/unimportant/PackageEntity;->mDailyShow:I

    .line 8
    iput p1, p0, Lcom/android/systemui/statusbar/notification/unimportant/PackageEntity;->mHistoryClick:I

    .line 10
    iput p2, p0, Lcom/android/systemui/statusbar/notification/unimportant/PackageEntity;->mHistoryShow:I

    .line 12
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/notification/unimportant/PackageEntity;->mDataChanged:Z

    .line 14
    monitor-exit v0

    .line 16
    return-void

    .line 17
    :catchall_0
    move-exception p0

    .line 18
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    throw p0
    .line 20
.end method

.method public final setDailyData(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/unimportant/PackageEntity;->mLock:Ljava/lang/Object;

    .line 2
    monitor-enter v0

    .line 4
    :try_start_0
    iget v1, p0, Lcom/android/systemui/statusbar/notification/unimportant/PackageEntity;->mDailyClick:I

    .line 5
    add-int/2addr v1, p1

    .line 7
    iput v1, p0, Lcom/android/systemui/statusbar/notification/unimportant/PackageEntity;->mDailyClick:I

    .line 8
    iget p1, p0, Lcom/android/systemui/statusbar/notification/unimportant/PackageEntity;->mDailyShow:I

    .line 10
    add-int/2addr p1, p2

    .line 12
    iput p1, p0, Lcom/android/systemui/statusbar/notification/unimportant/PackageEntity;->mDailyShow:I

    .line 13
    monitor-exit v0

    .line 15
    return-void

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    throw p0
    .line 19
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string v1, "PackageEntity{mPackageName=\'"

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/unimportant/PackageEntity;->mPackageName:Ljava/lang/String;

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    const-string v1, "\', mDailyClick="

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    iget v1, p0, Lcom/android/systemui/statusbar/notification/unimportant/PackageEntity;->mDailyClick:I

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    const-string v1, ", mDailyShow="

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    iget v1, p0, Lcom/android/systemui/statusbar/notification/unimportant/PackageEntity;->mDailyShow:I

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    const-string v1, ", mHistoryClick="

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    iget v1, p0, Lcom/android/systemui/statusbar/notification/unimportant/PackageEntity;->mHistoryClick:I

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    const-string v1, ", mHistoryShow="

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    iget v1, p0, Lcom/android/systemui/statusbar/notification/unimportant/PackageEntity;->mHistoryShow:I

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    const-string v1, ", mDataChanged="

    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/unimportant/PackageEntity;->mDataChanged:Z

    .line 59
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 61
    const/16 p0, 0x7d

    .line 64
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    move-result-object p0

    .line 72
    return-object p0
    .line 73
.end method
