.class public final Lcom/android/systemui/statusbar/notification/row/NotificationContentInflaterInjector$BuilderRemoteViews;
.super Landroid/widget/RemoteViews;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# direct methods
.method public constructor <init>(Landroid/content/pm/ApplicationInfo;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/RemoteViews;-><init>(Landroid/content/pm/ApplicationInfo;I)V

    .line 2
    return-void
    .line 5
.end method


# virtual methods
.method public final clone()Landroid/widget/RemoteViews;
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 4
    new-instance p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflaterInjector$BuilderRemoteViews;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflaterInjector$BuilderRemoteViews;-><init>(Landroid/os/Parcel;)V

    .line 5
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0
.end method

.method public final clone()Ljava/lang/Object;
    .locals 2

    .line 6
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x0

    .line 7
    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->writeToParcel(Landroid/os/Parcel;I)V

    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 9
    new-instance p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflaterInjector$BuilderRemoteViews;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflaterInjector$BuilderRemoteViews;-><init>(Landroid/os/Parcel;)V

    .line 10
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0
.end method

.method public final shouldUseStaticFilter()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
    .line 3
.end method
