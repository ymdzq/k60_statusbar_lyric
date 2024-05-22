.class public final Lcom/android/systemui/statusbar/CrossFadeHelper$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic val$endRunnable:Ljava/lang/Runnable;

.field public final synthetic val$view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/android/systemui/statusbar/CrossFadeHelper$1;->val$endRunnable:Ljava/lang/Runnable;

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/CrossFadeHelper$1;->val$view:Landroid/view/View;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/CrossFadeHelper$1;->val$endRunnable:Ljava/lang/Runnable;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/CrossFadeHelper$1;->val$view:Landroid/view/View;

    .line 9
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 11
    move-result v0

    .line 14
    const/16 v1, 0x8

    .line 15
    if-eq v0, v1, :cond_1

    .line 17
    iget-object p0, p0, Lcom/android/systemui/statusbar/CrossFadeHelper$1;->val$view:Landroid/view/View;

    .line 19
    const/4 v0, 0x4

    .line 21
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 22
    :cond_1
    return-void
    .line 25
.end method
