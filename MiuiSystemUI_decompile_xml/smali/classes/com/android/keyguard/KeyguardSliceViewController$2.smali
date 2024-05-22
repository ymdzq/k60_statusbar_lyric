.class public final Lcom/android/keyguard/KeyguardSliceViewController$2;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/KeyguardSliceViewController;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardSliceViewController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSliceViewController$2;->this$0:Lcom/android/keyguard/KeyguardSliceViewController;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 5

    .line 1
    check-cast p1, Landroidx/slice/Slice;

    .line 2
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSliceViewController$2;->this$0:Lcom/android/keyguard/KeyguardSliceViewController;

    .line 4
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSliceViewController;->mSlice:Landroidx/slice/Slice;

    .line 6
    const-string v0, "KeyguardSliceViewController#showSlice"

    .line 8
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 10
    const/4 v0, 0x0

    .line 13
    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 14
    if-nez p1, :cond_1

    .line 16
    check-cast v1, Lcom/android/keyguard/KeyguardSliceView;

    .line 18
    iget-object p0, v1, Lcom/android/keyguard/KeyguardSliceView;->mTitle:Landroid/widget/TextView;

    .line 20
    const/16 p1, 0x8

    .line 22
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 24
    iget-object p0, v1, Lcom/android/keyguard/KeyguardSliceView;->mRow:Lcom/android/keyguard/KeyguardSliceView$Row;

    .line 27
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 29
    iput-boolean v0, v1, Lcom/android/keyguard/KeyguardSliceView;->mHasHeader:Z

    .line 32
    iget-object p0, v1, Lcom/android/keyguard/KeyguardSliceView;->mContentChangeListener:Ljava/lang/Runnable;

    .line 34
    if-eqz p0, :cond_0

    .line 36
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 38
    :cond_0
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 41
    goto :goto_1

    .line 44
    :cond_1
    new-instance v2, Landroidx/slice/widget/ListContent;

    .line 45
    invoke-direct {v2, p1}, Landroidx/slice/widget/ListContent;-><init>(Landroidx/slice/Slice;)V

    .line 47
    iget-object p1, v2, Landroidx/slice/widget/ListContent;->mHeaderContent:Landroidx/slice/widget/RowContent;

    .line 50
    if-eqz p1, :cond_2

    .line 52
    iget-object v3, p1, Landroidx/slice/widget/SliceContent;->mSliceItem:Landroidx/slice/SliceItem;

    .line 54
    const-string v4, "list_item"

    .line 56
    invoke-virtual {v3, v4}, Landroidx/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    .line 58
    move-result v3

    .line 61
    if-nez v3, :cond_2

    .line 62
    const/4 v0, 0x1

    .line 64
    :cond_2
    iget-object v2, v2, Landroidx/slice/widget/ListContent;->mRowItems:Ljava/util/ArrayList;

    .line 65
    invoke-virtual {v2}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    .line 67
    move-result-object v2

    .line 70
    new-instance v3, Lcom/android/keyguard/KeyguardSliceViewController$$ExternalSyntheticLambda1;

    .line 71
    invoke-direct {v3}, Lcom/android/keyguard/KeyguardSliceViewController$$ExternalSyntheticLambda1;-><init>()V

    .line 73
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 76
    move-result-object v2

    .line 79
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    .line 80
    move-result-object v3

    .line 83
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 84
    move-result-object v2

    .line 87
    check-cast v2, Ljava/util/List;

    .line 88
    check-cast v1, Lcom/android/keyguard/KeyguardSliceView;

    .line 90
    if-eqz v0, :cond_3

    .line 92
    goto :goto_0

    .line 94
    :cond_3
    const/4 p1, 0x0

    .line 95
    :goto_0
    invoke-virtual {v1, p1, v2}, Lcom/android/keyguard/KeyguardSliceView;->showSlice(Landroidx/slice/widget/RowContent;Ljava/util/List;)Ljava/util/Map;

    .line 96
    move-result-object p1

    .line 99
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSliceViewController;->mClickActions:Ljava/util/Map;

    .line 100
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 102
    :goto_1
    return-void
    .line 105
.end method
