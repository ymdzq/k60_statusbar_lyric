.class public final Landroidx/slice/widget/RowView$2;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Landroidx/slice/widget/RowView;


# direct methods
.method public constructor <init>(Landroidx/slice/widget/RowView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/slice/widget/RowView$2;->this$0:Landroidx/slice/widget/RowView;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/slice/widget/RowView$2;->this$0:Landroidx/slice/widget/RowView;

    .line 2
    invoke-virtual {v0}, Landroidx/slice/widget/RowView;->sendSliderValue()V

    .line 4
    iget-object p0, p0, Landroidx/slice/widget/RowView$2;->this$0:Landroidx/slice/widget/RowView;

    .line 7
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Landroidx/slice/widget/RowView;->mRangeUpdaterRunning:Z

    .line 10
    return-void
    .line 12
.end method
