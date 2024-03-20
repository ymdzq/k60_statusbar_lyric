.class public final Lcom/android/systemui/qs/customize/MiuiQSCustomizerController$restoreInstanceState$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/customize/MiuiQSCustomizerController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/customize/MiuiQSCustomizerController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/customize/MiuiQSCustomizerController$restoreInstanceState$1;->this$0:Lcom/android/systemui/qs/customize/MiuiQSCustomizerController;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/systemui/qs/customize/MiuiQSCustomizerController$restoreInstanceState$1;->this$0:Lcom/android/systemui/qs/customize/MiuiQSCustomizerController;

    .line 2
    iget-object p1, p1, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 4
    check-cast p1, Lcom/android/systemui/qs/customize/MiuiQSCustomizer;

    .line 6
    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 8
    iget-object p0, p0, Lcom/android/systemui/qs/customize/MiuiQSCustomizerController$restoreInstanceState$1;->this$0:Lcom/android/systemui/qs/customize/MiuiQSCustomizerController;

    .line 11
    const/4 p1, 0x1

    .line 13
    const/4 p2, 0x0

    .line 14
    invoke-virtual {p0, p2, p2, p1}, Lcom/android/systemui/qs/customize/MiuiQSCustomizerController;->show(IIZ)V

    .line 15
    return-void
    .line 18
.end method
