.class public final Lcom/android/systemui/qs/QSPanelController$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/QSPanelController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSPanelController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/QSPanelController$1;->this$0:Lcom/android/systemui/qs/QSPanelController;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 2
    move-result p1

    .line 5
    const/4 p2, 0x1

    .line 6
    if-ne p1, p2, :cond_0

    .line 7
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanelController$1;->this$0:Lcom/android/systemui/qs/QSPanelController;

    .line 9
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanelController;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    .line 11
    const/16 p1, 0xf

    .line 13
    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/FalsingManager;->isFalseTouch(I)Z

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 18
    return p0
    .line 19
.end method
