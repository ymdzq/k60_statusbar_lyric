.class Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiFreeformCursorHandler$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiFreeformCursorHandler;

.field final synthetic val$activeTaskInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

.field final synthetic val$x:I

.field final synthetic val$y:I


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiFreeformCursorHandler;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiFreeformCursorHandler$1;->this$0:Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiFreeformCursorHandler;

    .line 2
    iput-object p2, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiFreeformCursorHandler$1;->val$activeTaskInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 4
    iput p3, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiFreeformCursorHandler$1;->val$x:I

    .line 6
    iput p4, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiFreeformCursorHandler$1;->val$y:I

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
    .line 13
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiFreeformCursorHandler$1;->val$activeTaskInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 2
    iget v1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiFreeformCursorHandler$1;->val$x:I

    .line 4
    iget v2, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiFreeformCursorHandler$1;->val$y:I

    .line 6
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiFreeformCursorHandler$1;->this$0:Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiFreeformCursorHandler;

    .line 8
    invoke-static {p0}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiFreeformCursorHandler;->-$$Nest$fgetmCaptionHeight(Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiFreeformCursorHandler;)I

    .line 10
    move-result p0

    .line 13
    invoke-static {v0, v1, v2, p0}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiFreeformCursorUtils;->updateCursorType(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;III)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    goto :goto_0

    .line 17
    :catch_0
    move-exception p0

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    .line 19
    const-string v1, "Failed to updateCursorType\uff1a"

    .line 21
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    .line 26
    move-result-object p0

    .line 29
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    move-result-object p0

    .line 36
    const-string v0, "MiuiFreeformCursorHandler"

    .line 37
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    :goto_0
    return-void
    .line 42
.end method
