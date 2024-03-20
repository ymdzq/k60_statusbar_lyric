.class public final Lcom/android/systemui/statusbar/notification/row/ChannelEditorListView$updateAppControlRow$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/row/ChannelEditorListView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/row/ChannelEditorListView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorListView$updateAppControlRow$1;->this$0:Lcom/android/systemui/statusbar/notification/row/ChannelEditorListView;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorListView$updateAppControlRow$1;->this$0:Lcom/android/systemui/statusbar/notification/row/ChannelEditorListView;

    .line 2
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ChannelEditorListView;->getController()Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;

    .line 4
    move-result-object p1

    .line 7
    iput-boolean p2, p1, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->appNotificationsEnabled:Z

    .line 8
    iget-object p2, p1, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->dialog:Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialog;

    .line 10
    if-nez p2, :cond_0

    .line 12
    const/4 p2, 0x0

    .line 14
    :cond_0
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->edits:Ljava/util/Map;

    .line 15
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    .line 17
    move-result v0

    .line 20
    const/4 v1, 0x1

    .line 21
    xor-int/2addr v0, v1

    .line 22
    if-nez v0, :cond_2

    .line 23
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->appNotificationsEnabled:Z

    .line 25
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 27
    move-result-object v0

    .line 30
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->appNotificationsCurrentlyEnabled:Ljava/lang/Boolean;

    .line 31
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 33
    move-result p1

    .line 36
    if-nez p1, :cond_1

    .line 37
    goto :goto_0

    .line 39
    :cond_1
    const/4 v1, 0x0

    .line 40
    :cond_2
    :goto_0
    const p1, 0x7f0a02ec    # @id/done_button

    .line 41
    invoke-virtual {p2, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 44
    move-result-object p1

    .line 47
    check-cast p1, Landroid/widget/TextView;

    .line 48
    if-eqz p1, :cond_4

    .line 50
    if-eqz v1, :cond_3

    .line 52
    const p2, 0x7f130546    # @string/inline_ok_button 'Apply'

    .line 54
    goto :goto_1

    .line 57
    :cond_3
    const p2, 0x7f130545    # @string/inline_done_button 'Done'

    .line 58
    :goto_1
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 61
    :cond_4
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorListView$updateAppControlRow$1;->this$0:Lcom/android/systemui/statusbar/notification/row/ChannelEditorListView;

    .line 64
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ChannelEditorListView;->updateRows()V

    .line 66
    return-void
    .line 69
.end method
