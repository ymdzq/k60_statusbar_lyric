.class public final Lmiuix/miuixbasewidget/widget/AlphabetIndexer$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic this$0:Lmiuix/miuixbasewidget/widget/AlphabetIndexer;


# direct methods
.method public constructor <init>(Lmiuix/miuixbasewidget/widget/AlphabetIndexer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$1;->this$0:Lmiuix/miuixbasewidget/widget/AlphabetIndexer;

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
    sub-int/2addr p9, p7

    .line 2
    sub-int/2addr p5, p3

    .line 3
    if-eq p9, p5, :cond_0

    .line 4
    iget-object p0, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$1;->this$0:Lmiuix/miuixbasewidget/widget/AlphabetIndexer;

    .line 6
    invoke-static {p0, p5}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->access$000(Lmiuix/miuixbasewidget/widget/AlphabetIndexer;I)V

    .line 8
    :cond_0
    return-void
    .line 11
.end method
