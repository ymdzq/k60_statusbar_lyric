.class public final synthetic Lcom/android/systemui/statusbar/notification/row/NotificationInfo$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroid/view/View;

.field public final synthetic f$1:Landroid/view/View;

.field public final synthetic f$2:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V
    .locals 0

    .line 1
    iput p4, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo$$ExternalSyntheticLambda3;->f$0:Landroid/view/View;

    .line 4
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo$$ExternalSyntheticLambda3;->f$1:Landroid/view/View;

    .line 6
    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo$$ExternalSyntheticLambda3;->f$2:Landroid/view/View;

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
    .line 13
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    goto :goto_0

    .line 9
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo$$ExternalSyntheticLambda3;->f$0:Landroid/view/View;

    .line 10
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo$$ExternalSyntheticLambda3;->f$1:Landroid/view/View;

    .line 12
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo$$ExternalSyntheticLambda3;->f$2:Landroid/view/View;

    .line 14
    sget v4, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->$r8$clinit:I

    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 18
    invoke-virtual {v3, v2}, Landroid/view/View;->setSelected(Z)V

    .line 21
    invoke-virtual {p0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 24
    return-void

    .line 27
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo$$ExternalSyntheticLambda3;->f$0:Landroid/view/View;

    .line 28
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo$$ExternalSyntheticLambda3;->f$1:Landroid/view/View;

    .line 30
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo$$ExternalSyntheticLambda3;->f$2:Landroid/view/View;

    .line 32
    sget v4, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->$r8$clinit:I

    .line 34
    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    .line 36
    invoke-virtual {v3, v1}, Landroid/view/View;->setSelected(Z)V

    .line 39
    invoke-virtual {p0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 42
    return-void

    .line 45
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo$$ExternalSyntheticLambda3;->f$0:Landroid/view/View;

    .line 46
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo$$ExternalSyntheticLambda3;->f$1:Landroid/view/View;

    .line 48
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo$$ExternalSyntheticLambda3;->f$2:Landroid/view/View;

    .line 50
    sget v4, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->$r8$clinit:I

    .line 52
    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    .line 54
    invoke-virtual {v3, v1}, Landroid/view/View;->setSelected(Z)V

    .line 57
    invoke-virtual {p0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 60
    return-void

    .line 63
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 64
.end method
