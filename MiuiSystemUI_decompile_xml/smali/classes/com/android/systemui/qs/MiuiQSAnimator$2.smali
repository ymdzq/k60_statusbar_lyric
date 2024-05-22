.class public final Lcom/android/systemui/qs/MiuiQSAnimator$2;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/MiuiQSAnimator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/MiuiQSAnimator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/MiuiQSAnimator$2;->this$0:Lcom/android/systemui/qs/MiuiQSAnimator;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiQSAnimator$2;->this$0:Lcom/android/systemui/qs/MiuiQSAnimator;

    .line 2
    invoke-virtual {v0}, Lcom/android/systemui/qs/MiuiQSAnimator;->miuiUpdateAnimators()V

    .line 4
    iget-object p0, p0, Lcom/android/systemui/qs/MiuiQSAnimator$2;->this$0:Lcom/android/systemui/qs/MiuiQSAnimator;

    .line 7
    iget v0, p0, Lcom/android/systemui/qs/MiuiQSAnimator;->mLastPosition:F

    .line 9
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/MiuiQSAnimator;->setPosition(F)V

    .line 11
    return-void
    .line 14
.end method
