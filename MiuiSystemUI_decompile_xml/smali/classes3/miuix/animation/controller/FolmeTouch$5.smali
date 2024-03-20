.class Lmiuix/animation/controller/FolmeTouch$5;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field final synthetic this$0:Lmiuix/animation/controller/FolmeTouch;


# direct methods
.method public constructor <init>(Lmiuix/animation/controller/FolmeTouch;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/animation/controller/FolmeTouch$5;->this$0:Lmiuix/animation/controller/FolmeTouch;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/animation/controller/FolmeTouch$5;->this$0:Lmiuix/animation/controller/FolmeTouch;

    .line 2
    invoke-static {v0}, Lmiuix/animation/controller/FolmeTouch;->access$300(Lmiuix/animation/controller/FolmeTouch;)Z

    .line 4
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    iget-object p0, p0, Lmiuix/animation/controller/FolmeTouch$5;->this$0:Lmiuix/animation/controller/FolmeTouch;

    .line 10
    invoke-static {p0, p1}, Lmiuix/animation/controller/FolmeTouch;->access$400(Lmiuix/animation/controller/FolmeTouch;Landroid/view/View;)V

    .line 12
    const/4 p0, 0x1

    .line 15
    return p0

    .line 16
    :cond_0
    const/4 p0, 0x0

    .line 17
    return p0
    .line 18
.end method
