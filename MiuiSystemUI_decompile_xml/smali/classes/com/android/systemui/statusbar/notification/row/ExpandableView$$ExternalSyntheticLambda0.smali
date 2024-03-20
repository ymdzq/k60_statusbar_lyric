.class public final synthetic Lcom/android/systemui/statusbar/notification/row/ExpandableView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

.field public final synthetic f$1:Landroid/util/IndentingPrintWriter;

.field public final synthetic f$2:[Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Landroid/util/IndentingPrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView$$ExternalSyntheticLambda0;->f$1:Landroid/util/IndentingPrintWriter;

    .line 7
    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView$$ExternalSyntheticLambda0;->f$2:[Ljava/lang/String;

    .line 9
    return-void
    .line 11
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 2
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView$$ExternalSyntheticLambda0;->f$1:Landroid/util/IndentingPrintWriter;

    .line 4
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView$$ExternalSyntheticLambda0;->f$2:[Ljava/lang/String;

    .line 6
    sget-object v2, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mClipRect:Landroid/graphics/Rect;

    .line 8
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    .line 10
    move-result-object v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    const-string p0, "no viewState!!!"

    .line 16
    invoke-virtual {v1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 18
    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 22
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 25
    :goto_0
    return-void
    .line 28
.end method
