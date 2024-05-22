.class public final Lcom/android/wm/shell/bubbles/StackEducationView$onAttachedToWindow$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/bubbles/StackEducationView;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/bubbles/StackEducationView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/bubbles/StackEducationView$onAttachedToWindow$1;->this$0:Lcom/android/wm/shell/bubbles/StackEducationView;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 2
    move-result p1

    .line 5
    const/4 p3, 0x0

    .line 6
    const/4 v0, 0x1

    .line 7
    if-ne p1, v0, :cond_0

    .line 8
    const/4 p1, 0x4

    .line 10
    if-ne p2, p1, :cond_0

    .line 11
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/StackEducationView$onAttachedToWindow$1;->this$0:Lcom/android/wm/shell/bubbles/StackEducationView;

    .line 13
    iget-boolean p1, p0, Lcom/android/wm/shell/bubbles/StackEducationView;->isHiding:Z

    .line 15
    if-nez p1, :cond_0

    .line 17
    invoke-virtual {p0, p3}, Lcom/android/wm/shell/bubbles/StackEducationView;->hide(Z)V

    .line 19
    return v0

    .line 22
    :cond_0
    return p3
    .line 23
.end method
