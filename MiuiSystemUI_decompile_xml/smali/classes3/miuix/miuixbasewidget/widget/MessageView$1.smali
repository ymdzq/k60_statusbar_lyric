.class public final Lmiuix/miuixbasewidget/widget/MessageView$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic this$0:Lmiuix/miuixbasewidget/widget/MessageView;


# direct methods
.method public constructor <init>(Lmiuix/miuixbasewidget/widget/MessageView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/miuixbasewidget/widget/MessageView$1;->this$0:Lmiuix/miuixbasewidget/widget/MessageView;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    filled-new-array {p1}, [Landroid/view/View;

    .line 2
    move-result-object p1

    .line 5
    invoke-static {p1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 6
    move-result-object p1

    .line 9
    invoke-interface {p1}, Lmiuix/animation/IFolme;->visible()Lmiuix/animation/IVisibleStyle;

    .line 10
    move-result-object p1

    .line 13
    const-wide/16 v0, 0x1

    .line 14
    invoke-interface {p1, v0, v1}, Lmiuix/animation/IVisibleStyle;->setFlags(J)Lmiuix/animation/IVisibleStyle;

    .line 16
    move-result-object p1

    .line 19
    const/4 v0, 0x0

    .line 20
    new-array v0, v0, [Lmiuix/animation/base/AnimConfig;

    .line 21
    invoke-interface {p1, v0}, Lmiuix/animation/IVisibleStyle;->hide([Lmiuix/animation/base/AnimConfig;)V

    .line 23
    iget-object p1, p0, Lmiuix/miuixbasewidget/widget/MessageView$1;->this$0:Lmiuix/miuixbasewidget/widget/MessageView;

    .line 26
    const/16 v0, 0x8

    .line 28
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 30
    iget-object p0, p0, Lmiuix/miuixbasewidget/widget/MessageView$1;->this$0:Lmiuix/miuixbasewidget/widget/MessageView;

    .line 33
    sget p1, Lmiuix/miuixbasewidget/widget/MessageView;->$r8$clinit:I

    .line 35
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    return-void
    .line 40
.end method
