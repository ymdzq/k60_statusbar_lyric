.class public final Lcom/android/systemui/statusbar/notification/row/MiuiExpandableNotificationRow$updateMiniWindowBar$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/row/MiuiExpandableNotificationRow;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/notification/row/MiuiExpandableNotificationRow;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/systemui/statusbar/notification/row/MiuiExpandableNotificationRow$updateMiniWindowBar$1;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/MiuiExpandableNotificationRow$updateMiniWindowBar$1;->this$0:Lcom/android/systemui/statusbar/notification/row/MiuiExpandableNotificationRow;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/MiuiExpandableNotificationRow$updateMiniWindowBar$1;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/MiuiExpandableNotificationRow$updateMiniWindowBar$1;->this$0:Lcom/android/systemui/statusbar/notification/row/MiuiExpandableNotificationRow;

    .line 8
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/row/MiuiExpandableNotificationRow;->access$showFreeformTipView(Lcom/android/systemui/statusbar/notification/row/MiuiExpandableNotificationRow;)V

    .line 10
    return-void

    .line 13
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/MiuiExpandableNotificationRow$updateMiniWindowBar$1;->this$0:Lcom/android/systemui/statusbar/notification/row/MiuiExpandableNotificationRow;

    .line 14
    sget v0, Lcom/android/systemui/statusbar/notification/row/MiuiExpandableNotificationRow;->$r8$clinit:I

    .line 16
    const/high16 v0, 0x3f800000    # 1.0f

    .line 18
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/MiuiExpandableNotificationRow;->startTouchScaleAnimateIfNeed(F)V

    .line 20
    return-void

    .line 23
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
