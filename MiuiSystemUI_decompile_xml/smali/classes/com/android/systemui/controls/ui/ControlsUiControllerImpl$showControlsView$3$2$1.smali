.class public final Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$showControlsView$3$2$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$showControlsView$3$2$1;->$r8$classId:I

    .line 2
    iput-object p2, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$showControlsView$3$2$1;->this$0:Ljava/lang/Object;

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
    iget v0, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$showControlsView$3$2$1;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$showControlsView$3$2$1;->this$0:Ljava/lang/Object;

    .line 8
    check-cast p0, Lcom/android/systemui/controls/ui/ControlsPopupMenu;

    .line 10
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    .line 12
    move-result-object p0

    .line 15
    if-eqz p0, :cond_0

    .line 16
    invoke-virtual {p0}, Landroid/widget/ListView;->requestAccessibilityFocus()Z

    .line 18
    :cond_0
    return-void

    .line 21
    :pswitch_1
    iget-object p0, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$showControlsView$3$2$1;->this$0:Ljava/lang/Object;

    .line 22
    check-cast p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;

    .line 24
    iget-object p0, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->overflowMenuAdapter:Lcom/android/systemui/controls/ui/OverflowMenuAdapter;

    .line 26
    if-eqz p0, :cond_1

    .line 28
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 30
    :cond_1
    return-void

    .line 33
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$showControlsView$3$2$1;->this$0:Ljava/lang/Object;

    .line 34
    check-cast p0, Lcom/android/systemui/controls/ui/ControlsPopupMenu;

    .line 36
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    .line 38
    move-result-object p0

    .line 41
    if-eqz p0, :cond_2

    .line 42
    invoke-virtual {p0}, Landroid/widget/ListView;->requestAccessibilityFocus()Z

    .line 44
    :cond_2
    return-void

    .line 47
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 48
.end method
