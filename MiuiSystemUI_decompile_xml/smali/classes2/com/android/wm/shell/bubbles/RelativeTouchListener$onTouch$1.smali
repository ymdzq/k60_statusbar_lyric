.class public final Lcom/android/wm/shell/bubbles/RelativeTouchListener$onTouch$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $v:Landroid/view/View;

.field public final synthetic this$0:Lcom/android/wm/shell/bubbles/RelativeTouchListener;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/android/wm/shell/bubbles/RelativeTouchListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/bubbles/RelativeTouchListener$onTouch$1;->$v:Landroid/view/View;

    .line 2
    iput-object p2, p0, Lcom/android/wm/shell/bubbles/RelativeTouchListener$onTouch$1;->this$0:Lcom/android/wm/shell/bubbles/RelativeTouchListener;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/RelativeTouchListener$onTouch$1;->$v:Landroid/view/View;

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->isLongClickable()Z

    .line 4
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/RelativeTouchListener$onTouch$1;->this$0:Lcom/android/wm/shell/bubbles/RelativeTouchListener;

    .line 10
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/RelativeTouchListener$onTouch$1;->$v:Landroid/view/View;

    .line 12
    invoke-virtual {p0}, Landroid/view/View;->performLongClick()Z

    .line 14
    move-result p0

    .line 17
    iput-boolean p0, v0, Lcom/android/wm/shell/bubbles/RelativeTouchListener;->performedLongClick:Z

    .line 18
    :cond_0
    return-void
    .line 20
.end method
