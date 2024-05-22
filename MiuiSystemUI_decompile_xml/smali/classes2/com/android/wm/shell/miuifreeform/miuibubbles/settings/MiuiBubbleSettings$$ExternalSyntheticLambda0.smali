.class public final synthetic Lcom/android/wm/shell/miuifreeform/miuibubbles/settings/MiuiBubbleSettings$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/settings/MiuiBubbleSettings$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    .line 5
    iput p2, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/settings/MiuiBubbleSettings$$ExternalSyntheticLambda0;->f$1:I

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/settings/MiuiBubbleSettings$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    .line 2
    iget p0, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/settings/MiuiBubbleSettings$$ExternalSyntheticLambda0;->f$1:I

    .line 4
    check-cast p1, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble;

    .line 6
    iget-object v1, p1, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble;->bubbleEntry:Lcom/android/wm/shell/miuifreeform/miuibubbles/data/MiuiBubbleEntry;

    .line 8
    iget-object v1, v1, Lcom/android/wm/shell/miuifreeform/miuibubbles/data/MiuiBubbleEntry;->packageName:Ljava/lang/String;

    .line 10
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    iget-object p1, p1, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble;->bubbleEntry:Lcom/android/wm/shell/miuifreeform/miuibubbles/data/MiuiBubbleEntry;

    .line 18
    iget p1, p1, Lcom/android/wm/shell/miuifreeform/miuibubbles/data/MiuiBubbleEntry;->userId:I

    .line 20
    if-ne p1, p0, :cond_0

    .line 22
    const/4 p0, 0x1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 p0, 0x0

    .line 26
    :goto_0
    return p0
    .line 27
.end method
