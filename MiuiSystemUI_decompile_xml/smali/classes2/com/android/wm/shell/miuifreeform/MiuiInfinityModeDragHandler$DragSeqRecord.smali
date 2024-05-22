.class public Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler$DragSeqRecord;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field ctrlType:I

.field seqNumber:I

.field final synthetic this$0:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler$DragSeqRecord;->this$0:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p2, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler$DragSeqRecord;->ctrlType:I

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public dragMerging()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler$DragSeqRecord;->seqNumber:I

    .line 2
    add-int/lit8 v0, v0, 0x1

    .line 4
    iput v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler$DragSeqRecord;->seqNumber:I

    .line 6
    invoke-static {}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->-$$Nest$sfgetTAG()Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    const-string v2, "dragMerging seqNumber:"

    .line 14
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    iget p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler$DragSeqRecord;->seqNumber:I

    .line 19
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    move-result-object p0

    .line 27
    invoke-static {v0, p0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController$Slog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    return-void
    .line 31
.end method

.method public dragStagedEnd()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler$DragSeqRecord;->seqNumber:I

    .line 2
    add-int/lit8 v0, v0, -0x1

    .line 4
    iput v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler$DragSeqRecord;->seqNumber:I

    .line 6
    invoke-static {}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->-$$Nest$sfgetTAG()Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    const-string v2, "dragStagedEnd seqNumber:"

    .line 14
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    iget p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler$DragSeqRecord;->seqNumber:I

    .line 19
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    move-result-object p0

    .line 27
    invoke-static {v0, p0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController$Slog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    return-void
    .line 31
.end method

.method public dragStart()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler$DragSeqRecord;->seqNumber:I

    .line 3
    invoke-static {}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->-$$Nest$sfgetTAG()Ljava/lang/String;

    .line 5
    move-result-object v0

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    const-string v2, "dragStart seqNumber:"

    .line 11
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    iget p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler$DragSeqRecord;->seqNumber:I

    .line 16
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    move-result-object p0

    .line 24
    invoke-static {v0, p0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController$Slog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    return-void
    .line 28
.end method

.method public isDragEnd()Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->-$$Nest$sfgetTAG()Ljava/lang/String;

    .line 2
    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    const-string v2, "isDragEnd seqNumber:"

    .line 8
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    iget v2, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler$DragSeqRecord;->seqNumber:I

    .line 13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    move-result-object v1

    .line 21
    invoke-static {v0, v1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController$Slog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    iget p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler$DragSeqRecord;->seqNumber:I

    .line 25
    if-gtz p0, :cond_0

    .line 27
    const/4 p0, 0x1

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 p0, 0x0

    .line 31
    :goto_0
    return p0
.end method
