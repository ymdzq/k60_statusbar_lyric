.class Lmiuix/animation/controller/FolmeTouch$2;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lmiuix/animation/controller/FolmeTouch;

.field final synthetic val$config:[Lmiuix/animation/base/AnimConfig;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method public constructor <init>(Lmiuix/animation/controller/FolmeTouch;Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/animation/controller/FolmeTouch$2;->this$0:Lmiuix/animation/controller/FolmeTouch;

    .line 2
    iput-object p2, p0, Lmiuix/animation/controller/FolmeTouch$2;->val$view:Landroid/view/View;

    .line 4
    iput-object p3, p0, Lmiuix/animation/controller/FolmeTouch$2;->val$config:[Lmiuix/animation/base/AnimConfig;

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
    .line 11
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lmiuix/animation/controller/FolmeTouch$2;->this$0:Lmiuix/animation/controller/FolmeTouch;

    .line 2
    iget-object v1, p0, Lmiuix/animation/controller/FolmeTouch$2;->val$view:Landroid/view/View;

    .line 4
    const/4 v2, 0x0

    .line 6
    iget-object p0, p0, Lmiuix/animation/controller/FolmeTouch$2;->val$config:[Lmiuix/animation/base/AnimConfig;

    .line 7
    invoke-static {v0, v1, v2, p0}, Lmiuix/animation/controller/FolmeTouch;->access$000(Lmiuix/animation/controller/FolmeTouch;Landroid/view/View;Z[Lmiuix/animation/base/AnimConfig;)Z

    .line 9
    return-void
    .line 12
.end method
