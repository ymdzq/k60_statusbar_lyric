.class public final Lcom/android/systemui/temporarydisplay/chipbar/ChipbarCoordinator$updateView$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/Gefingerpoken;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/temporarydisplay/chipbar/ChipbarCoordinator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/temporarydisplay/chipbar/ChipbarCoordinator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarCoordinator$updateView$1;->this$0:Lcom/android/systemui/temporarydisplay/chipbar/ChipbarCoordinator;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarCoordinator$updateView$1;->this$0:Lcom/android/systemui/temporarydisplay/chipbar/ChipbarCoordinator;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarCoordinator;->falsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    .line 4
    check-cast p0, Lcom/android/systemui/classifier/FalsingCollectorImpl;

    .line 6
    invoke-virtual {p0, p1}, Lcom/android/systemui/classifier/FalsingCollectorImpl;->onTouchEvent(Landroid/view/MotionEvent;)V

    .line 8
    const/4 p0, 0x0

    .line 11
    return p0
    .line 12
.end method
