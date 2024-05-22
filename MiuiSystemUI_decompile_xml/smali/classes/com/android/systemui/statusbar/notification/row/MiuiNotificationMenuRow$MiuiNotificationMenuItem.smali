.class public final Lcom/android/systemui/statusbar/notification/row/MiuiNotificationMenuRow$MiuiNotificationMenuItem;
.super Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow$NotificationMenuItem;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mIcon:Landroid/widget/ImageView;

.field public final mIconResId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/android/systemui/statusbar/notification/row/NotificationSnooze;I)V
    .locals 1

    .line 1
    const-string v0, ""

    .line 2
    invoke-direct {p0, p1, v0, p3, p4}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow$NotificationMenuItem;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/systemui/statusbar/notification/row/NotificationGuts$GutsContent;I)V

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 7
    move-result-object p3

    .line 10
    invoke-virtual {p3, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 11
    move-result-object p2

    .line 14
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow$NotificationMenuItem;->mContentDescription:Ljava/lang/String;

    .line 15
    if-ltz p4, :cond_0

    .line 17
    iput p4, p0, Lcom/android/systemui/statusbar/notification/row/MiuiNotificationMenuRow$MiuiNotificationMenuItem;->mIconResId:I

    .line 19
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 21
    move-result-object p1

    .line 24
    const p2, 0x7f0d01c1    # @layout/miui_notification_modal_menu 'res/layout/miui_notification_modal_menu.xml'

    .line 25
    const/4 p3, 0x0

    .line 28
    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 29
    move-result-object p1

    .line 32
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow$NotificationMenuItem;->mMenuView:Landroid/view/View;

    .line 33
    const p2, 0x7f0a0615    # @id/modal_menu_title

    .line 35
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 38
    move-result-object p1

    .line 41
    check-cast p1, Landroid/widget/TextView;

    .line 42
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow$NotificationMenuItem;->mContentDescription:Ljava/lang/String;

    .line 44
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow$NotificationMenuItem;->mMenuView:Landroid/view/View;

    .line 49
    const p2, 0x7f0a0614    # @id/modal_menu_icon

    .line 51
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 54
    move-result-object p1

    .line 57
    check-cast p1, Landroid/widget/ImageView;

    .line 58
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/MiuiNotificationMenuRow$MiuiNotificationMenuItem;->mIcon:Landroid/widget/ImageView;

    .line 60
    const p2, 0x7f0812fe    # @drawable/miui_notification_menu_ic_bg_inactive 'res/drawable/miui_notification_menu_ic_bg_inactive.xml'

    .line 62
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 65
    invoke-virtual {p1, p4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 68
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow$NotificationMenuItem;->mContentDescription:Ljava/lang/String;

    .line 71
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 73
    :cond_0
    return-void
    .line 76
.end method
