.class public final synthetic Lcom/android/systemui/globalactions/GlobalActionsDialogLite$MyAdapter$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroid/widget/BaseAdapter;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Landroid/widget/BaseAdapter;II)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$MyAdapter$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$MyAdapter$$ExternalSyntheticLambda1;->f$0:Landroid/widget/BaseAdapter;

    .line 4
    iput p2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$MyAdapter$$ExternalSyntheticLambda1;->f$1:I

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
    .line 11
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 2

    .line 1
    iget p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$MyAdapter$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    packed-switch p1, :pswitch_data_0

    .line 4
    goto :goto_2

    .line 7
    :pswitch_0
    iget-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$MyAdapter$$ExternalSyntheticLambda1;->f$0:Landroid/widget/BaseAdapter;

    .line 8
    check-cast p1, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$MyAdapter;

    .line 10
    iget p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$MyAdapter$$ExternalSyntheticLambda1;->f$1:I

    .line 12
    iget-object v0, p1, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$MyAdapter;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialogLite;

    .line 14
    iget-object v0, v0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->mAdapter:Lcom/android/systemui/globalactions/GlobalActionsDialogLite$MyAdapter;

    .line 16
    invoke-virtual {v0, p0}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$MyAdapter;->getItem(I)Lcom/android/systemui/globalactions/GlobalActionsDialogLite$Action;

    .line 18
    move-result-object p0

    .line 21
    instance-of v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$LongPressAction;

    .line 22
    if-eqz v0, :cond_1

    .line 24
    iget-object v0, p1, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$MyAdapter;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialogLite;

    .line 26
    iget-object v1, v0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->mDialog:Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ActionsDialogLite;

    .line 28
    if-eqz v1, :cond_0

    .line 30
    iget-object v0, v0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->mDialogLaunchAnimator:Lcom/android/systemui/animation/DialogLaunchAnimator;

    .line 32
    invoke-virtual {v0}, Lcom/android/systemui/animation/DialogLaunchAnimator;->disableAllCurrentDialogsExitAnimations()V

    .line 34
    iget-object p1, p1, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$MyAdapter;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialogLite;

    .line 37
    iget-object p1, p1, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->mDialog:Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ActionsDialogLite;

    .line 39
    invoke-virtual {p1}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ActionsDialogLite;->dismiss()V

    .line 41
    goto :goto_0

    .line 44
    :cond_0
    const-string p1, "GlobalActionsDialogLite"

    .line 45
    const-string v0, "Action long-clicked while mDialog is null."

    .line 47
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    :goto_0
    check-cast p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$LongPressAction;

    .line 52
    invoke-interface {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$LongPressAction;->onLongPress()Z

    .line 54
    move-result p0

    .line 57
    goto :goto_1

    .line 58
    :cond_1
    const/4 p0, 0x0

    .line 59
    :goto_1
    return p0

    .line 60
    :goto_2
    iget-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$MyAdapter$$ExternalSyntheticLambda1;->f$0:Landroid/widget/BaseAdapter;

    .line 61
    check-cast p1, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$MyOverflowAdapter;

    .line 63
    iget p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$MyAdapter$$ExternalSyntheticLambda1;->f$1:I

    .line 65
    sget v0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$MyOverflowAdapter;->$r8$clinit:I

    .line 67
    invoke-virtual {p1, p0}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$MyOverflowAdapter;->onLongClickItem(I)Z

    .line 69
    move-result p0

    .line 72
    return p0

    .line 73
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 74
.end method
