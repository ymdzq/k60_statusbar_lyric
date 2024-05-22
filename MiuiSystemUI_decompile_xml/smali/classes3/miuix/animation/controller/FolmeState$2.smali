.class Lmiuix/animation/controller/FolmeState$2;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lmiuix/animation/controller/FolmeState;

.field final synthetic val$fromTag:Ljava/lang/Object;

.field final synthetic val$oneTimeConfig:[Lmiuix/animation/base/AnimConfig;

.field final synthetic val$toTag:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lmiuix/animation/controller/FolmeState;[Lmiuix/animation/base/AnimConfig;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/animation/controller/FolmeState$2;->this$0:Lmiuix/animation/controller/FolmeState;

    .line 2
    iput-object p2, p0, Lmiuix/animation/controller/FolmeState$2;->val$oneTimeConfig:[Lmiuix/animation/base/AnimConfig;

    .line 4
    iput-object p3, p0, Lmiuix/animation/controller/FolmeState$2;->val$fromTag:Ljava/lang/Object;

    .line 6
    iput-object p4, p0, Lmiuix/animation/controller/FolmeState$2;->val$toTag:Ljava/lang/Object;

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
    .line 13
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lmiuix/animation/controller/FolmeState$2;->this$0:Lmiuix/animation/controller/FolmeState;

    .line 2
    invoke-static {v0}, Lmiuix/animation/controller/FolmeState;->access$100(Lmiuix/animation/controller/FolmeState;)Lmiuix/animation/base/AnimConfigLink;

    .line 4
    move-result-object v0

    .line 7
    iget-object v1, p0, Lmiuix/animation/controller/FolmeState$2;->val$oneTimeConfig:[Lmiuix/animation/base/AnimConfig;

    .line 8
    array-length v2, v1

    .line 10
    const/4 v3, 0x0

    .line 11
    move v4, v3

    .line 12
    :goto_0
    if-ge v4, v2, :cond_0

    .line 13
    aget-object v5, v1, v4

    .line 15
    new-array v6, v3, [Z

    .line 17
    invoke-virtual {v0, v5, v6}, Lmiuix/animation/base/AnimConfigLink;->add(Lmiuix/animation/base/AnimConfig;[Z)V

    .line 19
    add-int/lit8 v4, v4, 0x1

    .line 22
    goto :goto_0

    .line 24
    :cond_0
    iget-object v1, p0, Lmiuix/animation/controller/FolmeState$2;->this$0:Lmiuix/animation/controller/FolmeState;

    .line 25
    iget-object v2, p0, Lmiuix/animation/controller/FolmeState$2;->val$fromTag:Ljava/lang/Object;

    .line 27
    iget-object p0, p0, Lmiuix/animation/controller/FolmeState$2;->val$toTag:Ljava/lang/Object;

    .line 29
    invoke-static {v1, v2, p0, v0}, Lmiuix/animation/controller/FolmeState;->access$200(Lmiuix/animation/controller/FolmeState;Ljava/lang/Object;Ljava/lang/Object;Lmiuix/animation/base/AnimConfigLink;)V

    .line 31
    return-void
    .line 34
.end method
