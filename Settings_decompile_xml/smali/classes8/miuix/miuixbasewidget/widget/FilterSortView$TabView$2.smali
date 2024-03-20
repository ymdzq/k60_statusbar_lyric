.class Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$2;
.super Ljava/lang/Object;
.source "FilterSortView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

.field final synthetic val$l:Landroid/view/View$OnClickListener;


# direct methods
.method constructor <init>(Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 696
    iput-object p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$2;->this$0:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    iput-object p2, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$2;->val$l:Landroid/view/View$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 699
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$2;->this$0:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    invoke-static {v0}, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->access$900(Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 700
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$2;->this$0:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    invoke-static {v0}, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->access$1000(Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 701
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$2;->this$0:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    invoke-static {v0}, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->access$1100(Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;)Z

    move-result v2

    xor-int/2addr v1, v2

    invoke-static {v0, v1}, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->access$1200(Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;Z)V

    goto :goto_0

    .line 704
    :cond_0
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$2;->this$0:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    invoke-static {v0, v1}, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->access$200(Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;Z)V

    .line 706
    :cond_1
    :goto_0
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$2;->val$l:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    const-string v0, "2.0"

    .line 707
    invoke-static {v0}, Lmiuix/view/HapticCompat;->doesSupportHaptic(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 708
    iget-object p0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$2;->this$0:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    invoke-static {p0}, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->access$1300(Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;)Lmiuix/util/HapticFeedbackCompat;

    move-result-object p0

    const/16 p1, 0xcc

    invoke-virtual {p0, p1}, Lmiuix/util/HapticFeedbackCompat;->performExtHapticFeedback(I)Z

    goto :goto_1

    .line 710
    :cond_2
    sget p0, Lmiuix/view/HapticFeedbackConstants;->MIUI_MESH_NORMAL:I

    invoke-static {p1, p0}, Lmiuix/view/HapticCompat;->performHapticFeedback(Landroid/view/View;I)Z

    :goto_1
    return-void
.end method
