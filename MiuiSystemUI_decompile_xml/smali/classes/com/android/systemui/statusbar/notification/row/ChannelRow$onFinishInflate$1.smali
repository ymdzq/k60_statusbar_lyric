.class public final Lcom/android/systemui/statusbar/notification/row/ChannelRow$onFinishInflate$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/row/ChannelRow;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/row/ChannelRow;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ChannelRow$onFinishInflate$1;->this$0:Lcom/android/systemui/statusbar/notification/row/ChannelRow;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ChannelRow$onFinishInflate$1;->this$0:Lcom/android/systemui/statusbar/notification/row/ChannelRow;

    .line 2
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ChannelRow;->getChannel()Landroid/app/NotificationChannel;

    .line 4
    move-result-object p1

    .line 7
    if-eqz p1, :cond_6

    .line 8
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ChannelRow$onFinishInflate$1;->this$0:Lcom/android/systemui/statusbar/notification/row/ChannelRow;

    .line 10
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ChannelRow;->getController()Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;

    .line 12
    move-result-object p0

    .line 15
    const/4 v0, 0x0

    .line 16
    if-eqz p2, :cond_0

    .line 17
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getImportance()I

    .line 19
    move-result p2

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move p2, v0

    .line 24
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getImportance()I

    .line 28
    move-result v1

    .line 31
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->edits:Ljava/util/Map;

    .line 32
    if-ne v1, p2, :cond_1

    .line 34
    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    goto :goto_1

    .line 39
    :cond_1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    move-result-object p2

    .line 43
    invoke-interface {v2, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    :goto_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->dialog:Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialog;

    .line 47
    if-nez p1, :cond_2

    .line 49
    const/4 p1, 0x0

    .line 51
    :cond_2
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    .line 52
    move-result p2

    .line 55
    const/4 v1, 0x1

    .line 56
    xor-int/2addr p2, v1

    .line 57
    if-nez p2, :cond_3

    .line 58
    iget-boolean p2, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->appNotificationsEnabled:Z

    .line 60
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 62
    move-result-object p2

    .line 65
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->appNotificationsCurrentlyEnabled:Ljava/lang/Boolean;

    .line 66
    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 68
    move-result p0

    .line 71
    if-nez p0, :cond_4

    .line 72
    :cond_3
    move v0, v1

    .line 74
    :cond_4
    const p0, 0x7f0a02ec    # @id/done_button

    .line 75
    invoke-virtual {p1, p0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 78
    move-result-object p0

    .line 81
    check-cast p0, Landroid/widget/TextView;

    .line 82
    if-eqz p0, :cond_6

    .line 84
    if-eqz v0, :cond_5

    .line 86
    const p1, 0x7f130546    # @string/inline_ok_button 'Apply'

    .line 88
    goto :goto_2

    .line 91
    :cond_5
    const p1, 0x7f130545    # @string/inline_done_button 'Done'

    .line 92
    :goto_2
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 95
    :cond_6
    return-void
    .line 98
.end method
