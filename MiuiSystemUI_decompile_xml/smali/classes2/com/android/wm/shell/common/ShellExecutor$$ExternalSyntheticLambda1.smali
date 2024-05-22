.class public final synthetic Lcom/android/wm/shell/common/ShellExecutor$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:[Ljava/lang/Object;

.field public final synthetic f$1:Ljava/util/function/Supplier;

.field public final synthetic f$2:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public synthetic constructor <init>([Ljava/lang/Object;Ljava/util/function/Supplier;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/common/ShellExecutor$$ExternalSyntheticLambda1;->f$0:[Ljava/lang/Object;

    .line 5
    iput-object p2, p0, Lcom/android/wm/shell/common/ShellExecutor$$ExternalSyntheticLambda1;->f$1:Ljava/util/function/Supplier;

    .line 7
    iput-object p3, p0, Lcom/android/wm/shell/common/ShellExecutor$$ExternalSyntheticLambda1;->f$2:Ljava/util/concurrent/CountDownLatch;

    .line 9
    return-void
    .line 11
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/common/ShellExecutor$$ExternalSyntheticLambda1;->f$0:[Ljava/lang/Object;

    .line 2
    iget-object v1, p0, Lcom/android/wm/shell/common/ShellExecutor$$ExternalSyntheticLambda1;->f$1:Ljava/util/function/Supplier;

    .line 4
    iget-object p0, p0, Lcom/android/wm/shell/common/ShellExecutor$$ExternalSyntheticLambda1;->f$2:Ljava/util/concurrent/CountDownLatch;

    .line 6
    const/4 v2, 0x0

    .line 8
    invoke-interface {v1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 9
    move-result-object v1

    .line 12
    aput-object v1, v0, v2

    .line 13
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 15
    return-void
    .line 18
.end method
