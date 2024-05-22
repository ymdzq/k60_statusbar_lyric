.class public final Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$6;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# instance fields
.field public final synthetic this$0:Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;


# direct methods
.method public constructor <init>(Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$6;->this$0:Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onPreDraw()Z
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$6;->this$0:Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    .line 2
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->view:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 4
    invoke-virtual {v0}, Landroid/widget/ImageButton;->getRotation()F

    .line 6
    move-result v0

    .line 9
    iget v1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->rotation:F

    .line 10
    cmpl-float v1, v1, v0

    .line 12
    if-eqz v1, :cond_0

    .line 14
    iput v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->rotation:F

    .line 16
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->updateFromViewRotation()V

    .line 18
    :cond_0
    const/4 p0, 0x1

    .line 21
    return p0
    .line 22
.end method
