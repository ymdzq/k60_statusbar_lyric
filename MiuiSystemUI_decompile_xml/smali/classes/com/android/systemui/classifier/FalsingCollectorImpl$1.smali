.class public final Lcom/android/systemui/classifier/FalsingCollectorImpl$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/classifier/FalsingCollectorImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/classifier/FalsingCollectorImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl$1;->this$0:Lcom/android/systemui/classifier/FalsingCollectorImpl;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onStateChanged(I)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string v1, "StatusBarState="

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-static {p1}, Lcom/android/systemui/statusbar/StatusBarState;->toString(I)Ljava/lang/String;

    .line 9
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    move-result-object v0

    .line 19
    sget-boolean v1, Lcom/android/systemui/classifier/FalsingCollectorImpl;->DEBUG:Z

    .line 20
    if-eqz v1, :cond_0

    .line 22
    const-string v1, "FalsingCollector"

    .line 24
    const/4 v2, 0x0

    .line 26
    invoke-static {v1, v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 27
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl$1;->this$0:Lcom/android/systemui/classifier/FalsingCollectorImpl;

    .line 30
    iput p1, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mState:I

    .line 32
    invoke-virtual {p0}, Lcom/android/systemui/classifier/FalsingCollectorImpl;->updateSessionActive()V

    .line 34
    return-void
    .line 37
.end method
