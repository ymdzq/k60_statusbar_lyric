.class public final Lcom/android/systemui/statusbar/notification/modal/ModalWindowView$3;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView$3;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView$3;->this$0:Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onPreDraw()Z
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView$3;->$r8$classId:I

    .line 2
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    goto :goto_0

    .line 9
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView$3;->this$0:Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;

    .line 10
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->mModalRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 12
    if-eqz v0, :cond_0

    .line 14
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    .line 16
    move-result-object v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView$3;->this$0:Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;

    .line 22
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->mModalRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 24
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    .line 26
    move-result-object v0

    .line 29
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView$3;->this$0:Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;

    .line 30
    iget-object v4, v3, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->mModalRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 32
    iget-object v3, v3, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->animationProperties:Lcom/android/systemui/statusbar/notification/modal/ModalWindowView$1;

    .line 34
    invoke-virtual {v0, v4, v3}, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->animateTo(Landroid/view/View;Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;)V

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView$3;->this$0:Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;

    .line 39
    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->mMenuView:Landroid/view/View;

    .line 41
    if-eqz v3, :cond_1

    .line 43
    iget-object v4, v0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->mMenuViewState:Lcom/android/systemui/statusbar/notification/stack/ViewState;

    .line 45
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->menuAnimationProperties:Lcom/android/systemui/statusbar/notification/modal/ModalWindowView$1;

    .line 47
    invoke-virtual {v4, v3, v0}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->animateTo(Landroid/view/View;Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;)V

    .line 49
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView$3;->this$0:Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;

    .line 52
    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->mModalDialog:Landroid/view/View;

    .line 54
    if-eqz v3, :cond_2

    .line 56
    iget-object v4, v0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->mModalDialogViewState:Lcom/android/systemui/statusbar/notification/stack/ViewState;

    .line 58
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->animationProperties:Lcom/android/systemui/statusbar/notification/modal/ModalWindowView$1;

    .line 60
    invoke-virtual {v4, v3, v0}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->animateTo(Landroid/view/View;Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;)V

    .line 62
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView$3;->this$0:Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;

    .line 65
    iput-boolean v2, v0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->mChildrenUpdateRequested:Z

    .line 67
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 69
    move-result-object v0

    .line 72
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 73
    return v1

    .line 76
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView$3;->this$0:Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;

    .line 77
    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 79
    iget-boolean v4, v0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->mShowMenu:Z

    .line 81
    invoke-virtual {v0, v3, v4}, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->enterModal(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)V

    .line 83
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView$3;->this$0:Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;

    .line 86
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 88
    move-result-object v0

    .line 91
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 92
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView$3;->this$0:Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;

    .line 95
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->mFirstAddUpdateRequested:Z

    .line 97
    return v1

    .line 99
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 100
.end method
