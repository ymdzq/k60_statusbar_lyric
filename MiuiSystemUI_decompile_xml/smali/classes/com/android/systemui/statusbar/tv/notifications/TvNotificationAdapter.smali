.class public final Lcom/android/systemui/statusbar/tv/notifications/TvNotificationAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public mNotifications:Landroid/util/SparseArray;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 2
    const/4 v0, 0x1

    .line 5
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final getItemCount()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/tv/notifications/TvNotificationAdapter;->mNotifications:Landroid/util/SparseArray;

    .line 2
    if-nez p0, :cond_0

    .line 4
    const/4 p0, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    .line 8
    move-result p0

    .line 11
    :goto_0
    return p0
    .line 12
.end method

.method public final getItemId(I)J
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/tv/notifications/TvNotificationAdapter;->mNotifications:Landroid/util/SparseArray;

    .line 2
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->keyAt(I)I

    .line 4
    move-result p0

    .line 7
    int-to-long p0, p0

    .line 8
    return-wide p0
    .line 9
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/tv/notifications/TvNotificationAdapter;->mNotifications:Landroid/util/SparseArray;

    .line 2
    if-nez p0, :cond_0

    .line 4
    const-string p0, "TvNotificationAdapter"

    .line 6
    const-string p1, "Could not bind view holder because the notification is missing"

    .line 8
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    return-void

    .line 13
    :cond_0
    check-cast p1, Lcom/android/systemui/statusbar/tv/notifications/TvNotificationAdapter$TvNotificationViewHolder;

    .line 14
    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 16
    move-result-object p0

    .line 19
    check-cast p0, Landroid/service/notification/StatusBarNotification;

    .line 20
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 22
    move-result-object p0

    .line 25
    iget-object p2, p1, Lcom/android/systemui/statusbar/tv/notifications/TvNotificationAdapter$TvNotificationViewHolder;->mTitle:Landroid/widget/TextView;

    .line 26
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 28
    const-string v1, "android.title"

    .line 30
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 32
    move-result-object v0

    .line 35
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    iget-object p2, p1, Lcom/android/systemui/statusbar/tv/notifications/TvNotificationAdapter$TvNotificationViewHolder;->mDetails:Landroid/widget/TextView;

    .line 39
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 41
    const-string v1, "android.text"

    .line 43
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 45
    move-result-object v0

    .line 48
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    iget-object p0, p0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 52
    iput-object p0, p1, Lcom/android/systemui/statusbar/tv/notifications/TvNotificationAdapter$TvNotificationViewHolder;->mPendingIntent:Landroid/app/PendingIntent;

    .line 54
    return-void
    .line 56
.end method

.method public final onCreateViewHolder(ILandroidx/recyclerview/widget/RecyclerView;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1

    .line 1
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 2
    move-result-object p0

    .line 5
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 6
    move-result-object p0

    .line 9
    const p1, 0x7f0d03c9    # @layout/tv_notification_item 'res/layout/tv_notification_item.xml'

    .line 10
    const/4 v0, 0x0

    .line 13
    invoke-virtual {p0, p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 14
    move-result-object p0

    .line 17
    new-instance p1, Lcom/android/systemui/statusbar/tv/notifications/TvNotificationAdapter$TvNotificationViewHolder;

    .line 18
    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/tv/notifications/TvNotificationAdapter$TvNotificationViewHolder;-><init>(Landroid/view/View;)V

    .line 20
    return-object p1
    .line 23
.end method
