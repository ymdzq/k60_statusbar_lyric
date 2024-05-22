.class public final synthetic Lcom/android/wm/shell/miuifreeform/miuibubbles/views/RelativeTouchListener$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/miuifreeform/miuibubbles/views/RelativeTouchListener;

.field public final synthetic f$1:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/miuifreeform/miuibubbles/views/RelativeTouchListener;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/RelativeTouchListener$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/miuifreeform/miuibubbles/views/RelativeTouchListener;

    .line 5
    iput-object p2, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/RelativeTouchListener$$ExternalSyntheticLambda0;->f$1:Landroid/view/View;

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/RelativeTouchListener$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/miuifreeform/miuibubbles/views/RelativeTouchListener;

    .line 2
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/RelativeTouchListener$$ExternalSyntheticLambda0;->f$1:Landroid/view/View;

    .line 4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->isLongClickable()Z

    .line 9
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    invoke-virtual {p0}, Landroid/view/View;->performLongClick()Z

    .line 15
    move-result p0

    .line 18
    iput-boolean p0, v0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/RelativeTouchListener;->performedLongClick:Z

    .line 19
    :cond_0
    return-void
    .line 21
.end method
