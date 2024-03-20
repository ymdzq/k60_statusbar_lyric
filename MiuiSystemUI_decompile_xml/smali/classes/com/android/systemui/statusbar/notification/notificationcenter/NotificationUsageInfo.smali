.class public final Lcom/android/systemui/statusbar/notification/notificationcenter/NotificationUsageInfo;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public avgSentDaily:I

.field public avgSentWeekly:I

.field public id:I

.field public latestSentTime:J

.field public final pkgName:Ljava/lang/String;

.field public sentCount:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/statusbar/notification/notificationcenter/NotificationUsageInfo$1;

    .line 2
    invoke-direct {v0}, Lcom/android/systemui/statusbar/notification/notificationcenter/NotificationUsageInfo$1;-><init>()V

    .line 4
    sput-object v0, Lcom/android/systemui/statusbar/notification/notificationcenter/NotificationUsageInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    return-void
    .line 9
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/notificationcenter/NotificationUsageInfo;->id:I

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/notificationcenter/NotificationUsageInfo;->pkgName:Ljava/lang/String;

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/statusbar/notification/notificationcenter/NotificationUsageInfo;->latestSentTime:J

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/notificationcenter/NotificationUsageInfo;->sentCount:I

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/notificationcenter/NotificationUsageInfo;->avgSentDaily:I

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/notification/notificationcenter/NotificationUsageInfo;->avgSentWeekly:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/notificationcenter/NotificationUsageInfo;->pkgName:Ljava/lang/String;

    .line 3
    iput-wide p3, p0, Lcom/android/systemui/statusbar/notification/notificationcenter/NotificationUsageInfo;->latestSentTime:J

    .line 4
    iput p2, p0, Lcom/android/systemui/statusbar/notification/notificationcenter/NotificationUsageInfo;->sentCount:I

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/notificationcenter/NotificationUsageInfo;->pkgName:Ljava/lang/String;

    .line 2
    iget-wide v1, p0, Lcom/android/systemui/statusbar/notification/notificationcenter/NotificationUsageInfo;->latestSentTime:J

    .line 4
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 6
    move-result-object v1

    .line 9
    iget v2, p0, Lcom/android/systemui/statusbar/notification/notificationcenter/NotificationUsageInfo;->sentCount:I

    .line 10
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 12
    move-result-object v2

    .line 15
    iget v3, p0, Lcom/android/systemui/statusbar/notification/notificationcenter/NotificationUsageInfo;->avgSentDaily:I

    .line 16
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 18
    move-result-object v3

    .line 21
    iget p0, p0, Lcom/android/systemui/statusbar/notification/notificationcenter/NotificationUsageInfo;->avgSentWeekly:I

    .line 22
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 24
    move-result-object p0

    .line 27
    filled-new-array {v0, v1, v2, v3, p0}, [Ljava/lang/Object;

    .line 28
    move-result-object p0

    .line 31
    const-string v0, "NotificationUsageInfo:[pkaName=%s,latestSentTime=%s,sentCount=%s,avgSentDaily=%s,avgSentWeekly=%s]"

    .line 32
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 34
    move-result-object p0

    .line 37
    return-object p0
    .line 38
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    iget p2, p0, Lcom/android/systemui/statusbar/notification/notificationcenter/NotificationUsageInfo;->id:I

    .line 2
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/notificationcenter/NotificationUsageInfo;->pkgName:Ljava/lang/String;

    .line 7
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9
    iget-wide v0, p0, Lcom/android/systemui/statusbar/notification/notificationcenter/NotificationUsageInfo;->latestSentTime:J

    .line 12
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 14
    iget p2, p0, Lcom/android/systemui/statusbar/notification/notificationcenter/NotificationUsageInfo;->sentCount:I

    .line 17
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 19
    iget p2, p0, Lcom/android/systemui/statusbar/notification/notificationcenter/NotificationUsageInfo;->avgSentDaily:I

    .line 22
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 24
    iget p0, p0, Lcom/android/systemui/statusbar/notification/notificationcenter/NotificationUsageInfo;->avgSentWeekly:I

    .line 27
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 29
    return-void
    .line 32
.end method
