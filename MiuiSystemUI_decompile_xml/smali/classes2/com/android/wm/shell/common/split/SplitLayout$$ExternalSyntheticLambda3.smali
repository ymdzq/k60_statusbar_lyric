.class public final synthetic Lcom/android/wm/shell/common/split/SplitLayout$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/common/split/SplitLayout;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/common/split/SplitLayout;ILjava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/common/split/SplitLayout$$ExternalSyntheticLambda3;->f$0:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 5
    iput p2, p0, Lcom/android/wm/shell/common/split/SplitLayout$$ExternalSyntheticLambda3;->f$1:I

    .line 7
    iput-object p3, p0, Lcom/android/wm/shell/common/split/SplitLayout$$ExternalSyntheticLambda3;->f$2:Ljava/lang/Runnable;

    .line 9
    return-void
    .line 11
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayout$$ExternalSyntheticLambda3;->f$0:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 2
    iget v1, p0, Lcom/android/wm/shell/common/split/SplitLayout$$ExternalSyntheticLambda3;->f$1:I

    .line 4
    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitLayout$$ExternalSyntheticLambda3;->f$2:Ljava/lang/Runnable;

    .line 6
    const/4 v2, 0x1

    .line 8
    invoke-virtual {v0, v1, v2}, Lcom/android/wm/shell/common/split/SplitLayout;->setDividePosition(IZ)V

    .line 9
    if-eqz p0, :cond_0

    .line 12
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 17
    iput-boolean p0, v0, Lcom/android/wm/shell/common/split/SplitLayout;->mIsResizeEnter:Z

    .line 18
    return-void
    .line 20
.end method
