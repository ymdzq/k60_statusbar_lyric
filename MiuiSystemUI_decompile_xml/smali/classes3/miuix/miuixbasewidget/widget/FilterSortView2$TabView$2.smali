.class public final Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView$2;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic this$0:Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;

.field public final synthetic val$l:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView$2;->this$0:Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;

    .line 2
    iput-object p2, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView$2;->val$l:Landroid/view/View$OnClickListener;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView$2;->this$0:Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;

    .line 2
    iget-boolean v1, v0, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->mFiltered:Z

    .line 4
    const/4 v2, 0x1

    .line 6
    if-eqz v1, :cond_1

    .line 7
    iget-boolean v1, v0, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->mDescendingEnabled:Z

    .line 9
    if-eqz v1, :cond_2

    .line 11
    iget-boolean v1, v0, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->mDescending:Z

    .line 13
    xor-int/2addr v1, v2

    .line 15
    iput-boolean v1, v0, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->mDescending:Z

    .line 16
    if-eqz v1, :cond_0

    .line 18
    iget-object v0, v0, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->mArrow:Landroid/widget/ImageView;

    .line 20
    const/4 v1, 0x0

    .line 22
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setRotationX(F)V

    .line 23
    goto :goto_0

    .line 26
    :cond_0
    iget-object v0, v0, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->mArrow:Landroid/widget/ImageView;

    .line 27
    const/high16 v1, 0x43340000    # 180.0f

    .line 29
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setRotationX(F)V

    .line 31
    goto :goto_0

    .line 34
    :cond_1
    invoke-virtual {v0, v2}, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->setFiltered(Z)V

    .line 35
    :cond_2
    :goto_0
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView$2;->val$l:Landroid/view/View$OnClickListener;

    .line 38
    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 40
    const-string v0, "2.0"

    .line 43
    invoke-static {v0}, Lmiuix/view/HapticCompat;->doesSupportHaptic(Ljava/lang/String;)Z

    .line 45
    move-result v0

    .line 48
    if-eqz v0, :cond_3

    .line 49
    iget-object p0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView$2;->this$0:Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;

    .line 51
    invoke-static {p0}, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->access$800(Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;)Lmiuix/util/HapticFeedbackCompat;

    .line 53
    move-result-object p0

    .line 56
    const/16 p1, 0xcc

    .line 57
    invoke-virtual {p0, p1}, Lmiuix/util/HapticFeedbackCompat;->performExtHapticFeedback(I)V

    .line 59
    goto :goto_1

    .line 62
    :cond_3
    sget p0, Lmiuix/view/HapticFeedbackConstants;->MIUI_MESH_NORMAL:I

    .line 63
    invoke-static {p1, p0}, Lmiuix/view/HapticCompat;->performHapticFeedback(Landroid/view/View;I)Z

    .line 65
    :goto_1
    return-void
    .line 68
.end method
