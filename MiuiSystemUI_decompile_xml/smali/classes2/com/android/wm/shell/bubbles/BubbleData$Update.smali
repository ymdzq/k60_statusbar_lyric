.class public final Lcom/android/wm/shell/bubbles/BubbleData$Update;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public addedBubble:Lcom/android/wm/shell/bubbles/Bubble;

.field public addedOverflowBubble:Lcom/android/wm/shell/bubbles/Bubble;

.field public final bubbles:Ljava/util/List;

.field public expanded:Z

.field public expandedChanged:Z

.field public orderChanged:Z

.field public final overflowBubbles:Ljava/util/List;

.field public final removedBubbles:Ljava/util/List;

.field public removedOverflowBubble:Lcom/android/wm/shell/bubbles/Bubble;

.field public selectedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

.field public selectionChanged:Z

.field public suppressedBubble:Lcom/android/wm/shell/bubbles/Bubble;

.field public suppressedSummaryChanged:Z

.field public suppressedSummaryGroup:Ljava/lang/String;

.field public unsuppressedBubble:Lcom/android/wm/shell/bubbles/Bubble;

.field public updatedBubble:Lcom/android/wm/shell/bubbles/Bubble;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleData$Update;->removedBubbles:Ljava/util/List;

    .line 10
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 12
    move-result-object p1

    .line 15
    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleData$Update;->bubbles:Ljava/util/List;

    .line 16
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 18
    move-result-object p1

    .line 21
    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleData$Update;->overflowBubbles:Ljava/util/List;

    .line 22
    return-void
    .line 24
.end method


# virtual methods
.method public final bubbleRemoved(ILcom/android/wm/shell/bubbles/Bubble;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleData$Update;->removedBubbles:Ljava/util/List;

    .line 2
    new-instance v0, Landroid/util/Pair;

    .line 4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    move-result-object p1

    .line 9
    invoke-direct {v0, p2, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 10
    check-cast p0, Ljava/util/ArrayList;

    .line 13
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    return-void
    .line 18
.end method
