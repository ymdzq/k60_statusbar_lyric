.class public final synthetic Lcom/android/systemui/statusbar/notification/AssistantFeedbackController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/util/concurrent/Executor;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/notification/AssistantFeedbackController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/notification/AssistantFeedbackController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/AssistantFeedbackController$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/notification/AssistantFeedbackController;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/AssistantFeedbackController$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/notification/AssistantFeedbackController;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/AssistantFeedbackController;->mHandler:Landroid/os/Handler;

    .line 4
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 6
    return-void
    .line 9
.end method
