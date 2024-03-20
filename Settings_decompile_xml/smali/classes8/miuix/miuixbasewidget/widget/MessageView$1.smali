.class Lmiuix/miuixbasewidget/widget/MessageView$1;
.super Ljava/lang/Object;
.source "MessageView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/miuixbasewidget/widget/MessageView;->addCloseIcon()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/miuixbasewidget/widget/MessageView;


# direct methods
.method constructor <init>(Lmiuix/miuixbasewidget/widget/MessageView;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lmiuix/miuixbasewidget/widget/MessageView$1;->this$0:Lmiuix/miuixbasewidget/widget/MessageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 97
    filled-new-array {p1}, [Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p1

    invoke-interface {p1}, Lmiuix/animation/IFolme;->visible()Lmiuix/animation/IVisibleStyle;

    move-result-object p1

    const-wide/16 v0, 0x1

    invoke-interface {p1, v0, v1}, Lmiuix/animation/IVisibleStyle;->setFlags(J)Lmiuix/animation/IVisibleStyle;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {p1, v0}, Lmiuix/animation/IVisibleStyle;->hide([Lmiuix/animation/base/AnimConfig;)V

    .line 98
    iget-object p1, p0, Lmiuix/miuixbasewidget/widget/MessageView$1;->this$0:Lmiuix/miuixbasewidget/widget/MessageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 99
    iget-object p0, p0, Lmiuix/miuixbasewidget/widget/MessageView$1;->this$0:Lmiuix/miuixbasewidget/widget/MessageView;

    invoke-static {p0}, Lmiuix/miuixbasewidget/widget/MessageView;->access$000(Lmiuix/miuixbasewidget/widget/MessageView;)Lmiuix/miuixbasewidget/widget/MessageView$OnMessageViewCloseListener;

    return-void
.end method
