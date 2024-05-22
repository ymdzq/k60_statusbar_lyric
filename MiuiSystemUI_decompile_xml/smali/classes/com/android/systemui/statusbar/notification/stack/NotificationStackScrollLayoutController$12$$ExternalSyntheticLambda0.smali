.class public final synthetic Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$12$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/util/List;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;II)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$12$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$12$$ExternalSyntheticLambda0;->f$0:Ljava/util/List;

    .line 4
    iput p2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$12$$ExternalSyntheticLambda0;->f$1:I

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
    .line 11
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$12$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$12$$ExternalSyntheticLambda0;->f$0:Ljava/util/List;

    .line 8
    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$12$$ExternalSyntheticLambda0;->f$1:I

    .line 10
    check-cast p1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$MiuiClearAllListener;

    .line 12
    invoke-interface {p1, p0, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$MiuiClearAllListener;->onStart(ILjava/util/List;)V

    .line 14
    return-void

    .line 17
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$12$$ExternalSyntheticLambda0;->f$0:Ljava/util/List;

    .line 18
    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$12$$ExternalSyntheticLambda0;->f$1:I

    .line 20
    check-cast p1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$MiuiClearAllListener;

    .line 22
    invoke-interface {p1, p0, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$MiuiClearAllListener;->onEnd(ILjava/util/List;)V

    .line 24
    return-void

    .line 27
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 28
.end method
