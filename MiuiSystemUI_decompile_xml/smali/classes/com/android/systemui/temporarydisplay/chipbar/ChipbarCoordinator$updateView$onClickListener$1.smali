.class public final Lcom/android/systemui/temporarydisplay/chipbar/ChipbarCoordinator$updateView$onClickListener$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $newInfo:Lcom/android/systemui/temporarydisplay/chipbar/ChipbarInfo;

.field public final synthetic this$0:Lcom/android/systemui/temporarydisplay/chipbar/ChipbarCoordinator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/temporarydisplay/chipbar/ChipbarCoordinator;Lcom/android/systemui/temporarydisplay/chipbar/ChipbarInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarCoordinator$updateView$onClickListener$1;->this$0:Lcom/android/systemui/temporarydisplay/chipbar/ChipbarCoordinator;

    .line 2
    iput-object p2, p0, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarCoordinator$updateView$onClickListener$1;->$newInfo:Lcom/android/systemui/temporarydisplay/chipbar/ChipbarInfo;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarCoordinator$updateView$onClickListener$1;->this$0:Lcom/android/systemui/temporarydisplay/chipbar/ChipbarCoordinator;

    .line 2
    iget-object v0, v0, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarCoordinator;->falsingManager:Lcom/android/systemui/plugins/FalsingManager;

    .line 4
    const/4 v1, 0x1

    .line 6
    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/FalsingManager;->isFalseTap(I)Z

    .line 7
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    return-void

    .line 13
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarCoordinator$updateView$onClickListener$1;->$newInfo:Lcom/android/systemui/temporarydisplay/chipbar/ChipbarInfo;

    .line 14
    iget-object p0, p0, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarInfo;->endItem:Lcom/android/systemui/temporarydisplay/chipbar/ChipbarEndItem;

    .line 16
    check-cast p0, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarEndItem$Button;

    .line 18
    iget-object p0, p0, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarEndItem$Button;->onClickListener:Landroid/view/View$OnClickListener;

    .line 20
    invoke-interface {p0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 22
    return-void
    .line 25
.end method
