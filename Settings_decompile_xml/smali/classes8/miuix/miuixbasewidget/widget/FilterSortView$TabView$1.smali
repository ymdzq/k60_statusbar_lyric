.class Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$1;
.super Ljava/lang/Object;
.source "FilterSortView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->setFiltered(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

.field final synthetic val$filtered:Z


# direct methods
.method constructor <init>(Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;Z)V
    .locals 0

    .line 644
    iput-object p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$1;->this$0:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    iput-boolean p2, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$1;->val$filtered:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 647
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$1;->this$0:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    invoke-static {v0}, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->access$800(Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;)Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$OnFilteredListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$1;->val$filtered:Z

    if-eqz v0, :cond_0

    .line 648
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$1;->this$0:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    invoke-static {v0}, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->access$800(Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;)Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$OnFilteredListener;

    move-result-object v0

    iget-object v1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$1;->this$0:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    iget-boolean p0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$1;->val$filtered:Z

    invoke-interface {v0, v1, p0}, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$OnFilteredListener;->onFilteredChanged(Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;Z)V

    :cond_0
    return-void
.end method
