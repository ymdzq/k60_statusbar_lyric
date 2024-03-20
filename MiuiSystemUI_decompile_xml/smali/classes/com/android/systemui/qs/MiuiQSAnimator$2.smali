.class public final Lcom/android/systemui/qs/MiuiQSAnimator$2;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

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
