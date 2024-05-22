.class public final Lcom/android/systemui/statusbar/notification/modal/ModalWindowView$5;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/row/ExpandableView$OnHeightChangedListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView$5;->this$0:Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onHeightChanged(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Z)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView$5;->this$0:Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;

    .line 2
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->mModalRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 4
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->resetViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    .line 6
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->mMenuViewState:Lcom/android/systemui/statusbar/notification/stack/ViewState;

    .line 9
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->mModalRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 11
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    .line 13
    move-result-object v0

    .line 16
    iget v0, v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mYTranslation:F

    .line 17
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getIntrinsicHeight()I

    .line 19
    move-result p2

    .line 22
    int-to-float p2, p2

    .line 23
    add-float/2addr v0, p2

    .line 24
    iget p2, p0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->mModalMenuMarginTop:I

    .line 25
    int-to-float p2, p2

    .line 27
    add-float/2addr v0, p2

    .line 28
    iput v0, p1, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mYTranslation:F

    .line 29
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->requestChildrenUpdate()V

    .line 31
    return-void
    .line 34
.end method

.method public final onReset(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView$5;->this$0:Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowView;->mModalRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 4
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->resetViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    .line 6
    return-void
    .line 9
.end method
