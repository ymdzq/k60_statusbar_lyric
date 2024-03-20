.class public final Lcom/android/systemui/statusbar/notification/row/AppControlView$onFinishInflate$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/row/AppControlView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/row/AppControlView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/AppControlView$onFinishInflate$1;->this$0:Lcom/android/systemui/statusbar/notification/row/AppControlView;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/AppControlView$onFinishInflate$1;->this$0:Lcom/android/systemui/statusbar/notification/row/AppControlView;

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/AppControlView;->getSwitch()Landroid/widget/Switch;

    .line 4
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Landroid/widget/Switch;->toggle()V

    .line 8
    return-void
    .line 11
.end method
