.class public final Lcom/android/systemui/statusbar/notification/row/MiuiExpandableNotificationRow$setHeadsUpAnimatingAwayListener$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $listener:Ljava/util/function/Consumer;

.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/row/MiuiExpandableNotificationRow;


# direct methods
.method public constructor <init>(Ljava/util/function/Consumer;Lcom/android/systemui/statusbar/notification/row/MiuiExpandableNotificationRow;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/MiuiExpandableNotificationRow$setHeadsUpAnimatingAwayListener$1;->$listener:Ljava/util/function/Consumer;

    .line 2
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/MiuiExpandableNotificationRow$setHeadsUpAnimatingAwayListener$1;->this$0:Lcom/android/systemui/statusbar/notification/row/MiuiExpandableNotificationRow;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    .line 2
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/MiuiExpandableNotificationRow$setHeadsUpAnimatingAwayListener$1;->$listener:Ljava/util/function/Consumer;

    .line 4
    invoke-interface {v0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 6
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/MiuiExpandableNotificationRow$setHeadsUpAnimatingAwayListener$1;->this$0:Lcom/android/systemui/statusbar/notification/row/MiuiExpandableNotificationRow;

    .line 9
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/MiuiExpandableNotificationRow;->updateMiniWindowBar()V

    .line 11
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/MiuiExpandableNotificationRow$setHeadsUpAnimatingAwayListener$1;->this$0:Lcom/android/systemui/statusbar/notification/row/MiuiExpandableNotificationRow;

    .line 14
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/MiuiExpandableNotificationRow;->updateBackgroundBg()V

    .line 16
    return-void
    .line 19
.end method
