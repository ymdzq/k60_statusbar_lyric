.class public final synthetic Lcom/android/systemui/statusbar/policy/SmartReplyConstants$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/util/concurrent/Executor;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/policy/SmartReplyConstants;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/policy/SmartReplyConstants;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/SmartReplyConstants$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/policy/SmartReplyConstants;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SmartReplyConstants$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/policy/SmartReplyConstants;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SmartReplyConstants;->mHandler:Landroid/os/Handler;

    .line 4
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 6
    return-void
    .line 9
.end method
