.class Lmiuix/animation/controller/FolmeTouch$3;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lmiuix/animation/controller/FolmeTouch;

.field final synthetic val$clickListenerSet:Z

.field final synthetic val$config:[Lmiuix/animation/base/AnimConfig;

.field final synthetic val$isClickable:Z

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method public constructor <init>(Lmiuix/animation/controller/FolmeTouch;ZLandroid/view/View;[Lmiuix/animation/base/AnimConfig;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/animation/controller/FolmeTouch$3;->this$0:Lmiuix/animation/controller/FolmeTouch;

    .line 2
    iput-boolean p2, p0, Lmiuix/animation/controller/FolmeTouch$3;->val$clickListenerSet:Z

    .line 4
    iput-object p3, p0, Lmiuix/animation/controller/FolmeTouch$3;->val$view:Landroid/view/View;

    .line 6
    iput-object p4, p0, Lmiuix/animation/controller/FolmeTouch$3;->val$config:[Lmiuix/animation/base/AnimConfig;

    .line 8
    iput-boolean p5, p0, Lmiuix/animation/controller/FolmeTouch$3;->val$isClickable:Z

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
    .line 15
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lmiuix/animation/controller/FolmeTouch$3;->val$clickListenerSet:Z

    .line 2
    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lmiuix/animation/controller/FolmeTouch$3;->this$0:Lmiuix/animation/controller/FolmeTouch;

    .line 6
    iget-object v1, p0, Lmiuix/animation/controller/FolmeTouch$3;->val$view:Landroid/view/View;

    .line 8
    const/4 v2, 0x1

    .line 10
    iget-object v3, p0, Lmiuix/animation/controller/FolmeTouch$3;->val$config:[Lmiuix/animation/base/AnimConfig;

    .line 11
    invoke-static {v0, v1, v2, v3}, Lmiuix/animation/controller/FolmeTouch;->access$000(Lmiuix/animation/controller/FolmeTouch;Landroid/view/View;Z[Lmiuix/animation/base/AnimConfig;)Z

    .line 13
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    iget-object v0, p0, Lmiuix/animation/controller/FolmeTouch$3;->this$0:Lmiuix/animation/controller/FolmeTouch;

    .line 19
    iget-object v1, p0, Lmiuix/animation/controller/FolmeTouch$3;->val$view:Landroid/view/View;

    .line 21
    iget-boolean p0, p0, Lmiuix/animation/controller/FolmeTouch$3;->val$isClickable:Z

    .line 23
    invoke-static {v0, v1, p0}, Lmiuix/animation/controller/FolmeTouch;->access$100(Lmiuix/animation/controller/FolmeTouch;Landroid/view/View;Z)V

    .line 25
    :cond_0
    return-void
    .line 28
.end method
